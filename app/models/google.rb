class Google < ActiveRecord::Base
  self.table_name = 'google'

  def self.place(name, args = {})
    url = 'https://maps.googleapis.com/maps/api/place/textsearch/json'
    city = args[:city] || 'Paris'
    country = args[:country] || 'France'
    request_parameters = {
      query: "#{name} #{city} #{country}",
      key: 'AIzaSyAXgCgpPKM09uYO7HRL23S2a6GD9Y3gNz0',
    }
    request_parameters[:adress] = args[:adress] if args[:adress]

    uri = URI.parse(url)
    uri.query = URI.encode_www_form(request_parameters)
    response = Net::HTTP.get_response(uri)
    body = JSON.parse(response.body)

    begin
      response = body['results'][0]
      puts response['name']
      puts response['formatted_address']
      puts response['opening_hours']
      puts response['geometry']
      puts response['types'].inspect

      google_place = find_or_initialize_by(
        place_id: response['place_id']
      )

      google_place.update(
        name: response['name'],
        address: response['formatted_address'],
        latitude: response['geometry']['location']['lat'],
        longitude: response['geometry']['location']['lng'],
        rating: response['rating'],
        old_id: response['id'],
        types: response['types'].to_json,
      )

      google_place.place_id
    rescue
      debugger
      1
    end
  end
end