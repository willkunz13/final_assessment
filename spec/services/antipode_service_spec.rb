require 'rails_helper'

describe "Antipode Service", :vcr do
  it "can get antipode" do
		latlong = {:lat=>-22.3193039, :lng=>-65.8306389}
		antipode = AntipodeService.new(latlong)
		expect(antipode.fetch_antipode).to eq({:lat=>22.3193039, :long=>114.1693611})
	end
end
