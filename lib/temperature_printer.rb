require './lib/temperature_converter.rb'

class TemperaturePrinter


	attr_reader :temp

	@converter = TemperatureConverter.new

		def self.to_text(celcius, fahrenheit, kelvin)
			"Temperature\n" +
				"#{celcius}  °C\n" +
				"#{fahrenheit} °F\n" +
				"#{kelvin}  K\n"
		end

		def self.to_html(celcius, fahrenheit, kelvin)
			"<div>\n" +
					"<div>#{celcius} °C</div>\n" +
					"<div>#{fahrenheit} °F</div>\n" +
					"<div>#{kelvin} K</div>\n" +
				"</div>"
		end

		def self.to_json(celcius, fahrenheit, kelvin)
			"(celcius: #{celcius}, fahrenheit: #{fahrenheit}, kelvin: #{kelvin})"
		end

		def self.print(temp)
			puts 'TEXTing'
			puts to_text(@converter.to_celcius(temp), @converter.to_fahrenheit(temp), @converter.to_kelvin(temp))
			puts ''

			puts 'HTMLing'
			puts to_html(@converter.to_celcius(temp), @converter.to_fahrenheit(temp), @converter.to_kelvin(temp))
			puts ''

			puts 'JSONing'
			puts to_json(@converter.to_celcius(temp), @converter.to_fahrenheit(temp), @converter.to_kelvin(temp))
			puts ''
		end

end
