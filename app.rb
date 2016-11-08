require './lib/temperature_reader.rb'

cmd = ARGV
file = "./data/temp.txt"
url = "http://labict.be/software-engineering/temperature/api/temperature/fake"
ttn_link = "staging.thethingsnetwork.org"
port = 18830

reader = TemperatureReader.new

# puts "Commandline\n"
# reader.cmdline_temperature cmd
# puts '...............................................................'
#
#
# puts "File"
# reader.file_temperature file
# puts '...............................................................'
#
# puts "Url\n"
# reader.url_temperature url
# puts '...............................................................'

puts "Listening on TTN\n"
reader.ttn_reader
