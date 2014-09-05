require 'net/http'
require 'nokogiri'

class Bar < ActiveRecord::Base
  has_many :flips, through: :location, source: :flip
  has_many :location

  def self.fill_table
    urls = YAML.load_file('urls.yml')
    puts urls
    
    urls.each do |url|
      sleep 2

      uri = URI.parse(url)
      puts uri
      req = Net::HTTP::Get.new(uri.to_s)
      res = Net::HTTP.start(uri.host, uri.port) {|http|
        http.request(req)
      }

      File.open("bar_temp", 'w') { |file| file.write(res.body.force_encoding('UTF-8')) }

      doc = Nokogiri::HTML(res.body)


      name = doc.at_css('div#featured-content').children.children.first.text
      next if find_by(name: name)

      address = doc.at_css('div#featured-content').children.children.children[1].text
      raw_html = doc.at_css('div#featured-map').text
      geolocation = raw_html.scan(/(google\.maps\.LatLng\()(.*)(\))/).first[1].split(',').map(&:to_f)
      latitude = geolocation[0]
      longitude = geolocation[1]

      bar = create(
        name: name,
        address: address,
        latitude: latitude,
        longitude: longitude,
        url: url,
      )

      doc.at_css('div.entry ul').children.each do |item|
        next if item.text == "\n"
        flip_name = item.children[0].text
        flip = Flip.find_by_name(flip_name)
        flip ||= Flip.create(name: flip_name)
        Location.create(flipper_id: flip[:id], bar_id: bar[:id])
        puts flip_name
      end

      puts bar[:name]
    end

    return true
  end

  def self.one
    url = 'http://geoflipper.fr/le-metro-2/'

    uri = URI.parse(url)
    puts uri
    req = Net::HTTP::Get.new(uri.to_s)
    res = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(req)
    }

    File.open("bar_temp", 'w') { |file| file.write(res.body.force_encoding('UTF-8')) }

    doc = Nokogiri::HTML(res.body)

    name = doc.at_css('div#featured-content').children.children.first.text
    adress = doc.at_css('div#featured-content').children.children.children[1].text
    raw_html = doc.at_css('div#featured-map').text
    geolocation = raw_html.scan(/(google\.maps\.LatLng\()(.*)(\))/).first[1].split(',').map(&:to_f)
    latitude = geolocation[0]
    longitude = geolocation[1]

    bar = create(
      name: name,
      latitude: latitude,
      longitude: longitude,
      url: url,
    )

    doc.at_css('div.entry ul').children.each do |item|
      next if item.text == "\n"
      flip_name = item.children[0].text
      flip = Flip.find_by_name(flip_name)
      flip ||= Flip.create(name: flip_name)
      Location.create(flipper_id: flip[:id], bar_id: bar[:id])
      puts flip_name
    end

    puts bar[:name]

    return true
  end

  def self.clean
    delete_all
  end

  def self.mgb
    doc = File.open("mistergoodbeer.html", 'r').read
    zde = doc.scan(/gWindowContents0.push\((.*?)\;\"\)\;/)

    zde.each do |plap|
      name = /(?<=fiche\\\/[1-9]\\\"&gt\;)(.*?)(?=&lt\;img)/.match(plap.first).to_s
      name = /(?<=fiche\\\/\d\d\\\"&gt\;)(.*?)(?=&lt\;img)/.match(plap.first).to_s if name == ''
      name = /(?<=fiche\\\/\d\d\d\\\"&gt\;)(.*?)(?=&lt\;img)/.match(plap.first).to_s if name == ''
      name = name
        .gsub('\u00e9', 'é')
        .gsub('\u00e0', 'à')
        .gsub('\u00e8', 'è')
        .gsub('\u00f4', 'ô')
        .gsub('\u00e2', 'â')
        .gsub('\u00e7', 'ç')
        .gsub('\u00ea', 'ê')
        .gsub('\u00fb', 'û')
        .gsub('\u00b4', '´')

      address = /(?<=adresse\\\"&gt\;)(.*?)(?=&lt)/.match(plap.first).to_s
        .gsub('\u00e9', 'é')
        .gsub('\u00e0', 'à')
        .gsub('\u00e8', 'è')
        .gsub('\u00f4', 'ô')
        .gsub('\u00e2', 'â')
        .gsub('\u00e7', 'ç')
        .gsub('\u00ea', 'ê')
        .gsub('\u00fb', 'û')
        .gsub('\u00b4', '´')
        .gsub('\u00ed', 'í')
        .gsub('\u2030', '‰')
        .gsub('\u00a3', '£')

      price_s = /(?<=prix_hh\\\"&gt\;)(.*?)(?=&lt)/.match(plap.first).to_s.gsub('\u20ac', '€')
      price = /(?<=prix_hh\\\"&gt\;)(.*?)(?= \\u20ac en Happy hour&lt)/.match(plap.first).to_s.gsub(',','.').to_f
      normal_price = /(?<=prix_sh\\\"&gt\;)(.*?)(?= \\u20ac&lt)/.match(plap.first).to_s.gsub(',','.').to_f
      happyhour = /(?<=happyhour\\\"&gt\;)(.*?)(?=&lt)/.match(plap.first).to_s

      puts "#{name} - #{address}"
      puts "#{normal_price} - #{price_s}"
      puts happyhour
      puts '----------'
      address(address)
    end
  end

  def self.address(address)
    url = 'https://maps.googleapis.com/maps/api/geocode/json'
    request_parameters = {
      address: "#{address} Paris France",
      key: 'AIzaSyAXgCgpPKM09uYO7HRL23S2a6GD9Y3gNz0',
    }
    uri = URI.parse(url)
    uri.query = URI.encode_www_form(request_parameters)
    response = Net::HTTP.get_response(uri)
    body = response.body
    puts address
    puts '----'
    puts body
  end
end
