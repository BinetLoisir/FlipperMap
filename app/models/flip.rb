require 'net/http'
require 'nokogiri'

class Flip < ActiveRecord::Base
  self.table_name = 'flippers'
  has_many :location

  def self.fill_table
    uri = URI.parse('http://geoflipper.fr/')
    puts uri
    req = Net::HTTP::Get.new(uri.to_s)
    res = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(req)
    }

    File.open("geoflipper", 'w') { |file| file.write(res.body.force_encoding('UTF-8')) }

    doc = Nokogiri::HTML(res.body)

    doc.at_css('ul.sub-menu').children.each do |item|
      next if item.text == "\n\t" || item.text == "\n"
      item.children[2].children.each do |sub_item|
        next if sub_item.text == "\n\t" || sub_item.text == "\n\t\t"
        create(name: sub_item.text)
        puts sub_item.text
      end
    end

    return true
  end
end
