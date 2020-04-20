class AntipodeService

	def initialize(location)
		location
		@lat = location[:lat]
		@lng = location[:lng]
	end

	def fetch_antipode
    get_json[:data][:attributes]
  end

  private

  def get_json
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://amypode.herokuapp.com/api/v1/antipodes?lat=#{@lat}&long=#{@lng}") do |f|
			f.headers["api_key"] = ENV["AMYPODE_API_KEY"]
		end
  end
end

