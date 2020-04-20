require 'rails_helper'

describe "Antipode Api", :vcr do
  it "get antipode and weather" do
    get '/api/v1/antipode?location=Hong%20Kong'
    expect(response).to be_successful
		expect(response.body).to include("data")
		expect(response.body).to include("antipode")
		expect(response.body).to include("location_name")
		binding.pry
		expect(response.body).to include("forecast")
	end
end
