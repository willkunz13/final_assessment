require 'rails_helper'

describe "Weather Service", :vcr do
  it "get weather" do
    weather_service = WeatherService.new({:lat=>-22.3193039, :long=>-65.8306389})
		response = weather_service.response
		expect(response[:current][:temp]).to eq(286.07)
		expect(response[:current][:pressure]).to eq(1018)
  end
end
