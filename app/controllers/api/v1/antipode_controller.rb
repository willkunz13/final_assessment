class Api::V1::AntipodeController < ApplicationController

	def show
		location_service = GeoService.new(params[:location])
		antipode_service = AntipodeService.new(location_service.fetch_latlong)
		antipode_latlong = antipode_service.fetch_antipode
		message = WeatherService.new(antipode_latlong).response
		city = location_service.fetch_city(antipode_service.fetch_antipode)
		antipode = Antipode.new(city, message, params[:location])
		binding.pry
		render json: AntipodeSerializer.new(antipode)
	end
end
