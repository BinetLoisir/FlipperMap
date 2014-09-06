class MapController < ApplicationController
  def map
    @latitude = Bar.first[:latitude]
    @longitude = Bar.first[:longitude]
    first_bar_list = Bar.all.map do |bar|
      description = "<a href=\"#{bar[:url]}\" class=\"hidden-link-black\"><b>#{bar[:name]}</b></a><br>"
      bar.location.map do |location|
        description += "#{location.flip[:name]}"
        description += " (#{location.flip[:rating]}/10)" if location.flip[:rating].to_f > 0
        description += '<br>'
      end
      {
        "lat" => bar[:latitude].to_s,
        "lng" => bar[:longitude].to_s,
        "picture" => {
          "url" => "/assets/ring.png",
          "width" =>  28,
          "height" => 24
        },
        "infowindow" => description
      }
    end
    second_bar_list = CheapBar.all.map do |bar|
      description = "<b>#{bar[:name]}</b><br>"
      description += "#{bar[:price]} € en happy hour"
      description +=bar[:original_price] > 0 ? " (#{bar[:original_price]} € sinon)<br>" : "<br>"
      description += "#{bar[:happy_hour]}" unless bar[:happy_hour] == "Happy hour: h - h"
      {
        "lat" => bar[:latitude].to_s,
        "lng" => bar[:longitude].to_s,
        "picture" => {
          "url" => "/assets/holypint_tiny.png",
          "width" =>  28,
          "height" => 40
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
