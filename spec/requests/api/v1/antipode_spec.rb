require 'rails_helper'

describe "Antipode Api", :vcr do
  it "get antipode and weather" do
    get '/api/v1/antipode?location=Hong%20Kong'
    expect(response).to be_successful
		expect(response.body).to include("data")
		expect(response.body).to include("antipode")
		expect(response.body).to include("location_name")
		expect(response.body).to include("forecast")
		expect(response.body).to include("summary")
		expect(response.body).to include("current_temperature")
	end
end
