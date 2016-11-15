require './lib/temperature_reader.rb'
require 'optparse'

cmd = ARGV
file = "./data/temp.txt"
url = "http://labict.be/software-engineering/temperature/api/temperature/fake"
ttn_host = "staging.thethingsnetwork.org"
port = 1883
username = '70B3D57ED00012B2'
password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
sensor_id = '70B3D57ED00012B2/devices/00000000AE6C63E4/up'

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
#
# puts "Listening on TTN\n"
# reader.ttn_reader(ttn_host, port, username, password, sensor_id)

OptionParser.new do |opts|
 opts.banner = "Usage: ruby app.rb [options]"

 opts.on("-t CMDTEMP", Float, "Show cmd temperature.") do |cmdtemp|
   reader.cmdline_temperature "#{cmdtemp}"
 end

 opts.on("-f FILE", String, "Show file temperature.") do |file|
   reader.file_temperature "#{file}"
 end

 opts.on("-u URL", String, "Show url temperature.") do |url|
   reader.url_temperature "#{url}"
 end

 opts.on("-m", "--mqtt", "Show mqtt temperature.") do
   reader.ttn_reader(ttn_host, port, username, password, sensor_id)
 end
end.parse!
