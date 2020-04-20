class Forecast

	attr_reader :current, :hourly, :daily, :id

	def initialize(data)
		cumulate = Cumulate.new(data)
		@current = cumulate.current
		@hourly = cumulate.hourly
		@daily = cumulate.daily
	end
end
