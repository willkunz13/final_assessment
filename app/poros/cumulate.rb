class Cumulate

#	attr_reader :current, :hourly, :daily 
	
	def initialize(data)
		@data = data
	end

#	def create_current
#		Current.new(@data)
#	end
#
#	def create_hourly
#		@hourly_data.map do |snippet|
#			Hourly.new(snippet)
#		end
#	end
#
#	def create_daily
#		@daily_data.map do |snippet|
#			Daily.new(snippet)
#		end
#	end

	def summary
		@data[:current][:weather].first[:description]
	end

	def current_temperature
		@data[:current][:temp]
	end
end
