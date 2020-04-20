class GeoService

	def initialize(location)
		@location = location
	end	

	def fetch_latlong
		get_json[:results].first[:geometry][:location]
	end

	def fetch_city(lat_long)
		reverse_get_json(lat_long)[:results].first[:formatted_address]	
	end

	private

  def get_json
    response = conn
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
		Faraday.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{@location}&key=#{ENV['GOOGLE_API_KEY']}")
  end

	def reverse_get_json(lat_long)
		lat_long = lat_long[:lat].to_s + ',' + lat_long[:long].to_s
		response = reverse_conn(lat_long)
		JSON.parse(response.body, symbolize_names: true)
	end

	def reverse_conn(lat_long)
		Faraday.get("https://maps.googleapis.com/maps/api/geocode/json?latlng=#{lat_long}&key=#{ENV['GOOGLE_API_KEY']}")
	end
end

