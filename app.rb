require './lib/temperature_printer.rb'

temp_printer = TemperaturePrinter.new

# temp_reader.cmdLine_temp ARGV
temp_printer.print

# temp_reader.txtFile_temp './data/temp.txt'
temp_printer.print

# temp_reader.url_temp 'http://labict.be/software-engineering/temperature/api/temperature/fake'
temp_printer.print
