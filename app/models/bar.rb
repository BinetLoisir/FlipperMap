require 'net/http'
require 'nokogiri'

class Bar < ActiveRecord::Base
  has_many :flips, through: :location, source: :flip
  has_many :location

  def self.fill_table
    urls = YAML.load_file('urls.yml')
    puts urls
    
    urls.each do |url|
      begin
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

      rescue
        puts "Problem with #{url}"
      end
    end

     File.delete("bar_temp")
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

  def self.google
    all.each do |bar|
      bar[:google_id] = Google.place(bar[:name], address: bar[:address])
      bar.save
    end
  end
end
