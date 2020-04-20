class Api::V1::AntipodeController < ApplicationController

	def show
		location_service = GeoService.new(params[:location])
		antipode_service = AntipodeService.new(location_service.fetch_latlong)
		antipode_latlong = antipode_service.fetch_antipode
		weather_service = WeatherService.new(antipode_latlong)
		message = weather_service.response
		city = location_service.fetch_city(antipode_latlong)
			
	end
end
