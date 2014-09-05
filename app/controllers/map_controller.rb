class MapController < ApplicationController
  def index
    @latitude = Bar.first[:latitude]
    @longitude = Bar.first[:longitude]
    @bar_list = Bar.all.map do |bar|
      description = "<a href=\"#{bar[:url]}\" class=\"hiddenlink\"><b>#{bar[:name]}</b></a><br>"
      description += bar.location.map { |location| location.flip[:name] }.join('<br>')
      {
        "lat" => bar[:latitude].to_s,
        "lng" => bar[:longitude].to_s,
        "picture" => {
          "url" => "http://localhost:3000/assets/holypint_tiny.png",
          "width" =>  28,
          "height" => 40
        },
        "infowindow" => description
      }
    end.to_json
  end
end
