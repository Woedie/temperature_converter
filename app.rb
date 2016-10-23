require './lib/temperature_reader.rb'

cmd = ARGV
file = "./data/temp.txt"
url = "http://labict.be/software-engineering/temperature/api/temperature/fake"

reader = TemperatureReader.new

puts "Commandline\n"
reader.cmdline_temperature cmd
puts '...............................................................'


puts "File"
reader.file_temperature file
puts '...............................................................'

puts "Url\n"
reader.url_temperature url
puts '...............................................................'
