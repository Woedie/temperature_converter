require './lib/temperature_reader.rb'
require 'optparse'
require 'net/http'
require 'uri'
require 'rubygems'
require 'mqtt'
require 'json'

cmd = ARGV
file = "./data/temp.txt"
url = "http://labict.be/software-engineering/temperature/api/temperature/fake"
# ttn_host = "staging.thethingsnetwork.org"
# port = 1883
# username = '70B3D57ED00012B2'
# password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
# sensor_id = '70B3D57ED00012B2/devices/00000000AE6C63E4/up'

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
  ttn_host = "staging.thethingsnetwork.org"
  port = 1883
  username = '70B3D57ED00012B2'
  password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
  sensor_id = '70B3D57ED00012B2/devices/00000000AE6C63E4/up'
 opts.banner = "Usage: ruby app.rb [options]"

 @conv = nil
 opts.on("-t CMDTEMP", Float, "Show cmd temperature.") do |cmdtemp|
   @conv = TemperatureConverter.new "#{cmdtemp}".to_f
 end

 opts.on("-f FILE", String, "Show file temperature.") do |file|
  #  reader.file_temperature "#{file}"
  @conv = TemperatureConverter.new File.read("#{file}").to_f
 end

 opts.on("-u URL", String, "Show url temperature.") do |url|
  @conv = TemperatureConverter.new Net::HTTP.get(URI.parse("#{url}")).to_f
 end

 opts.on("-m", "--mqtt", "Show mqtt temperature.") do
   MQTT::Client.connect(
   :host => ttn_host,
   :port => port,
   :username => username,
   :password => password) do |c|
     # If you pass a block to the get method, then it will loop
     c.get(sensor_id) do |topic,message|
           obj = JSON.parse("#{message}")
           conv = obj['fields']['temperature'].to_f
           @conv = TemperatureConverter.new conv
          #  puts conv
          # #  puts TemperaturePrinter.to_text(conv)
          #  puts '.....................................................................'
            break if message [0,1] != nil
     end
   end
   @conv
 end

 opts.on("--text", "Show temperature as text.") do
   puts TemperaturePrinter.to_text(@conv)
 end

 opts.on("--json", "Show temperature as json.") do
   puts TemperaturePrinter.to_json(@conv)
 end

 opts.on("--html", "Show temperature as html.") do
   puts TemperaturePrinter.to_html(@conv)
 end

end.parse!
