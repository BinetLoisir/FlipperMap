require 'net/http'
require 'nokogiri'

class Flip < ActiveRecord::Base
  self.table_name = 'flippers'
  has_many :location, foreign_key: 'flipper_id'
  has_many :bars, through: :location, source: :bar
  # has_many :location, foreign_key: 'flipper_id'

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

  def self.info
    all.each do |flip|
      begin
        url = 'http://www.ipdb.org/search.pl'
        params = {
          any: flip[:name]
            .gsub('’', '\'')
            .gsub('‘', '\'')
            .gsub('/', ' ')
            .gsub('.', ' ')
            .gsub('HS', 'High Speed')
            .gsub('Les ', '')
            .gsub('®', '')
            .gsub('™', '')
        }
        uri = URI.parse(url)
        uri.query = URI.encode_www_form(params)
        res = Net::HTTP.get_response(uri)
        doc = Nokogiri::HTML(res.body)
        url = "http://www.ipdb.org/#{doc.at_css('a.linkid').attributes['href'].text}"
        if url.include?('#')
          id = /(?<=#)(.*)/.match(url).to_s
          url = "http://www.ipdb.org/machine.cgi?id=#{id}"
        end

        uri = URI.parse(url)
        req = Net::HTTP::Get.new(uri.to_s)
        res = Net::HTTP.start(uri.host, uri.port) {|http|
          http.request(req)
        }
        doc = Nokogiri::HTML(res.body)

        rating = doc.at_css('a.linkid').parent.parent.parent.parent.parent.parent.parent.children[3].children[1].children.children.children.text.to_f

        debugger

        flip[:rating] = rating if rating > 0
        flip[:url] = url
        flip.save

        puts flip['name']
        puts url
        puts rating
      rescue
        puts "Problem with: #{flip[:name]}"
        1
      end
    end

  end
end
