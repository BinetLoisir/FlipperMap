require 'net/http'

class CheapBar < ActiveRecord::Base
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

      location = address(address)
      latitude = location['lat']
      longitude = location['lng']

      puts "#{name} - #{address}"
      puts "#{normal_price} - #{price_s}"
      puts happyhour
      puts '----------'

      CheapBar.create(
        name: name,
        address: address,
        latitude: latitude,
        longitude: longitude,
        price: price,
        original_price: normal_price,
        happy_hour: happyhour
      )
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
    body = JSON.parse(response.body)
    body['results'].first['geometry']['location']
  end

  def self.google
    all.each do |bar|
      next if bar[:google_id]
      puts "Starting Goole search for #{bar[:name]}"
      bar[:google_id] = Google.place(bar[:name], address: bar[:address])
      next if bar[:google_id] == true
      break if bar[:google_id] == false
      bar.save
    end
  end
end
