class MapController < ApplicationController
  def index
  end

  def map
    @latitude = Bar.first[:latitude]
    @longitude = Bar.first[:longitude]
    first_bar_list = Bar.all.map do |bar|
      description = "<a href=\"#{bar[:url]}\" class=\"hiddenlink\"><b>#{bar[:name]}</b></a><br>"
      description += bar.location.map { |location| location.flip[:name] }.join('<br>')
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
      description += "#{bar[:price]} € en happy hour (#{bar[:original_price]} € sinon)<br>"
      description += "#{bar[:happy_hour]}"
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
end
