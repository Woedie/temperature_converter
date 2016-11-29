require './lib/temperature_converter.rb'

class TemperaturePrinter


	attr_reader :temp



		def self.to_text(temperature)
			"Temperature\n" +
				"#{temperature.to_celcius}  °C\n" +
				"#{temperature.to_fahrenheit} °F\n" +
				"#{temperature.to_kelvin}  K\n"
		end

		def self.to_html(temperature)
			"<div>\n" +
					"<div>#{temperature.to_celcius} °C</div>\n" +
					"<div>#{temperature.to_fahrenheit} °F</div>\n" +
					"<div>#{temperature.to_kelvin} K</div>\n" +
				"</div>"
		end

		def self.to_json(temperature)
			"{\"celcius: #{temperature.to_celcius}\"; \"fahrenheit: #{temperature.to_fahrenheit}\"; \"kelvin: #{temperature.to_kelvin}\"}"
		end

		def self.print(temperature)
			puts 'TEXTing'
			puts to_text(@converter)
			puts ''

			puts 'HTMLing'
			puts to_html(@converter)
			puts ''

			puts 'JSONing'
			puts to_json(@converter)
			puts ''
		end

end
