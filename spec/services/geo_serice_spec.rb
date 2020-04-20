require 'rails_helper'

describe "Geo Service", :vcr do
  it "to lat/long" do
		location = "Hong Kong"
		geo_service = GeoService.new(location)
		response = geo_service.fetch_latlong
		expect(response).to eq({:lat=>22.3193039, :lng=>114.1693611})
  end

	it "to city" do
		latlong = {:lat=>22.3193039, :long=>114.1693611} 
		location = 0
		geo_service = GeoService.new(location)
		response = geo_service.fetch_city(latlong)	
		expect(response).to include('Hong Kong')
	end
end
