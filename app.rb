require './lib/temperature_convert.rb'

temp_converter = TemperatureConverter.new

temp_converter.cmdLine_temp ARGV
puts temp_converter.to_text
puts temp_converter.to_json
puts temp_converter.to_html

temp_converter.txtFile_temp './data/temp.txt'
puts temp_converter.to_text
puts temp_converter.to_json
puts temp_converter.to_html

temp_converter.url_temp 'http://labict.be/software-engineering/temperature/api/temperature/fake'
puts temp_converter.to_text
puts temp_converter.to_json
puts temp_converter.to_html
