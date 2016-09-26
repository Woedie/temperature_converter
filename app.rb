require './lib/temperature_convert.rb'

input = ARGV.first.to_f

temp_converter = TemperatureConverter.new input
temp_converter_txt = TemperatureConverter.new File.read('./data/temp.txt').to_f
puts "Temperature cmdLine:"
puts temp_converter.convertC
puts temp_converter.convertF
puts temp_converter.convertK
puts "Temperature txtFile:"
puts temp_converter_txt.convertC
puts temp_converter_txt.convertF
puts temp_converter_txt.convertK
