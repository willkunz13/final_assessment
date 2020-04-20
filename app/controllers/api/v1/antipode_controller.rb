class Api::V1::AntipodeController < ApplicationController

	def show
		location_service = GeoService.new(params[:location])
		antipode_service = AntipodeService.new(location_service.fet_latlong)
	end
end
