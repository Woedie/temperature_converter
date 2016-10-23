class TemperatureConverter

	attr_reader :temp
	KELVIN = 273.15
	FAHRENHEIT_OFFSET = 32
	FAHRENHEIT_SLOPE = Rational(9,5)

	def initialize
		@temp = 0
	end

	  # def self.convert(temp)
	  #   # celcius = TemperatureConverter.to_celcius(temp)
	  #   # fahrenheit = TemperatureConverter.to_fahrenheit(temp)
		# 	# kelvin = TemperatureConverter.to_kelvin(temp)
		#
		# 	# celcius = temp
		# 	# fahrenheit = (temp * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
		# 	# kelvin = temp + KELVIN
	  #   return celcius, fahrenheit, kelvin
	  # end

		def to_celcius(temp)
			temp
		end

		def to_fahrenheit(temp)
			(temp * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
		end

		def to_kelvin(temp)
			temp + KELVIN
		end

end
