class MapController < ApplicationController
  def map
    @latitude = Bar.first[:latitude]
    @longitude = Bar.first[:longitude]
    first_bar_list = Bar.all.map do |bar|
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
    end
    second_bar_list = CheapBar.all.map do |bar|
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
    end
    @bar_list = first_bar_list.concat(second_bar_list).to_json
  end

  def info
  end

  def pinballs
  end

  def contact
  end
end
