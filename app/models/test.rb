require 'net/http'
require 'nokogiri'

class Test
  def self.zde
    url = URI.parse('http://geoflipper.fr/geoflipper/')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }

    puts res.body

    File.open('geoflipper', 'w') { |file| file.write(res.body.force_encoding('UTF-8')) }

    doc = Nokogiri::HTML(res.body)

    raw_html = doc.at_css('div#featured').text

    raw_html.scan(/(?<=var the_link = ')(.*)(?=';)/).to_a
  end

  def self.paris
    uri = URI.parse('http://geoflipper.fr/category/france/ile-de-france/paris/')
    puts uri
    req = Net::HTTP::Get.new(uri.to_s)
    res = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(req)
    }

    puts res.body

    File.open("paris", 'w') { |file| file.write(res.body.force_encoding('UTF-8')) }

    doc = Nokogiri::HTML(res.body)

    raw_html = doc.at_css('div#featured').text

    result = raw_html.scan(/(?<=var the_link = ')(.*)(?=';)/).to_a.map(&:first)

    File.open('urls.yml', 'w') {|f| f.write result.to_yaml }
    result
  end
end
