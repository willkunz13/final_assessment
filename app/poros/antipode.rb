class Antipode

	attr_reader :id, :location_name, :forecast, :search_location

	def initialize(city, weather, search_location)
		@location_name = city
		@forecast = Forecast.new(weather)
		@search_location = search_location
	end
end
