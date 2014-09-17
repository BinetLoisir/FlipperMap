class MapController < ApplicationController
  def map

    @latitude = Bar.first[:latitude]
    @longitude = Bar.first[:longitude]

    google_bar_list = Google.all.map do |bar|
      stars = [[(bar[:rating].to_f - 0.01) * 2 - 5, 3].min, 0].max.to_i
      pbs = 0

      description = "<b>#{bar[:name]}"
      description += " (#{bar[:rating]}/5)" if bar[:rating].to_f > 0
      description += '</b><br>'

      cheap_bar = CheapBar.find_by(google_id: bar[:place_id])
      if cheap_bar
        description += "#{cheap_bar[:price]} € en happy hour"
        description += cheap_bar[:original_price] > 0 ? " (#{cheap_bar[:original_price]} € sinon)<br>" : "<br>"
        description += "#{cheap_bar[:happy_hour]}" unless cheap_bar[:happy_hour] == "Happy hour: h - h"
        description += '<br>'
      end

      pinball_bar = Bar.find_by(google_id: bar[:place_id])
      if pinball_bar
        pinball_bar.location.map do |location|
          description += "<a href=\"#{location.flip[:url]}\" class=\"hidden-link-black\">#{location.flip[:name]}"
          description += " (#{location.flip[:rating]}/10)" if location.flip[:rating].to_f > 0
          description += '<br></a>'
        end
        pbs = [pinball_bar.location.size, 2].min
      end

      icon_url = "/assets/#{stars}_stars_#{pbs}_pinballs.png"
      {
        "lat" => bar[:latitude].to_s,
        "lng" => bar[:longitude].to_s,
        "picture" => {
          "url" => icon_url,
          "width" =>  70,
          "height" => 70
        },
        "infowindow" => description
      }
    end

    first_bar_list = Bar.all.map do |bar|
      next if bar[:google_id]

      description = "<a href=\"#{bar[:url]}\" class=\"hidden-link-black\"><b>#{bar[:name]}"
      description += " (#{bar.google_rating}/5)" if bar.google_rating.to_f > 0
      description += '</b></a><br>'
      bar.location.map do |location|
        description += "<a href=\"#{location.flip[:url]}\" class=\"hidden-link-black\">#{location.flip[:name]}"
        description += " (#{location.flip[:rating]}/10)" if location.flip[:rating].to_f > 0
        description += '<br></a>'
      end
      stars = [[(bar.google_rating.to_f - 0.01) * 2 - 5, 3].min, 0].max.to_i
      pbs = [bar.location.size, 2].min
      icon_url = "/assets/#{stars}_stars_#{pbs}_pinballs.png"
      {
        "lat" => bar[:latitude].to_s,
        "lng" => bar[:longitude].to_s,
        "picture" => {
          "url" => icon_url,
          "width" =>  70,
          "height" => 70
        },
        "infowindow" => description
      }
    end.compact

    second_bar_list = CheapBar.all.map do |bar|
      next if bar[:google_id]

      description = "<b>#{bar[:name]}"
      description += " (#{bar.google_rating}/5)" if bar.google_rating.to_f > 0
      description += '</b><br>'
      description += "#{bar[:price]} € en happy hour"
      description += bar[:original_price] > 0 ? " (#{bar[:original_price]} € sinon)<br>" : "<br>"
      description += "#{bar[:happy_hour]}" unless bar[:happy_hour] == "Happy hour: h - h"
      stars = [[(bar.google_rating.to_f - 0.01) * 2 - 5, 3].min, 0].max.to_i
      icon_url = "/assets/#{stars}_stars_0_pinballs.png"
      {
        "lat" => bar[:latitude].to_s,
        "lng" => bar[:longitude].to_s,
        "picture" => {
          "url" => icon_url,
          "width" =>  70,
          "height" => 70
        },
        "infowindow" => description
      }
    end.compact

    @bar_list = google_bar_list.concat(first_bar_list.concat(second_bar_list)).to_json
  end

  def info
  end

  def pinballs
  end

  def contact
  end
end
