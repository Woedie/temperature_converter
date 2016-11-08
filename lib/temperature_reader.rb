require 'net/http'
require 'uri'
require './lib/temperature_printer.rb'
require 'rubygems'
require 'mqtt'

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

		def ttn_reader
			# Subscribe example
			MQTT::Client.connect(
			:host => 'staging.thethingsnetwork.org',
			:port => 1883,
			:username => '70B3D57ED00012B2',
			:password => 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w=') do |c|
			  # If you pass a block to the get method, then it will loop
			  c.get('#') do |topic,message|
			    puts "#{topic}: #{message}"
			  end
			end
		end

end
