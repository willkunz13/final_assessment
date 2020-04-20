class Api::V1::AntipodeController < ApplicationController

	def show
		location_service = GeoService.new(params[:location])
		antipode_service = AntipodeService.new(location_service.fetch_latlong)
		antipode_service.fetch_antipode
		
	end
end
