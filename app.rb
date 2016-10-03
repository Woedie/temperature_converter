require './lib/temperature_convert.rb'

temp_converter = TemperatureConverter.new

temp_converter.cmdLine_temp ARGV
temp_converter.print

temp_converter.txtFile_temp './data/temp.txt'
temp_converter.print

temp_converter.url_temp 'http://labict.be/software-engineering/temperature/api/temperature/fake'
temp_converter.print
