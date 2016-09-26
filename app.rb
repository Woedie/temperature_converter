require './lib/temperature_convert.rb'

temp_converter = TemperatureConverter.new

temp_converter.cmdLine_temp ARGV
puts temp_converter.to_text

temp_converter.txtFile_temp './data/temp.txt'
puts temp_converter.to_text

temp_converter.html_temp http://labict.be/software-engineering/temperature/api/temperature/fake
puts temp_converter.to_text
