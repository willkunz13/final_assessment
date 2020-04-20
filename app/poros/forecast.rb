class Forecast

	attr_reader :summary, :current_temperature

	def initialize(data)
		cumulate = Cumulate.new(data)
		@summary = cumulate.summary
		@current_temperature = cumulate.current_temperature
	end
end
