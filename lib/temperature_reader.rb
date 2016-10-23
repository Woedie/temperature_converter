require 'net/http'
require 'uri'
require './lib/temperature_printer.rb'

class TemperatureReader


	attr_reader :temp

	def initialize
		@temp = 0
	end

		def cmdline_temperature temp
			TemperaturePrinter.print(temp.first.to_f)
		end

		def file_temperature path
			@path = path
			temp = File.read(path).to_f
			TemperaturePrinter.print(temp)
		end

		def url_temperature url
			temp = Net::HTTP.get(URI.parse(url)).to_f
			TemperaturePrinter.print(temp)
		end

		def open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

end
