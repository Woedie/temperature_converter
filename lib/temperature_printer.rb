require './lib/temperature_convert.rb'
require './lib/temperature_reader.rb'

class TemperaturePrinter

  F_CONST = 9.0/5.0
  K_CONST = 273.15

  def to_text

    puts ""
    puts "Temperature text:"
    puts ""
    temperature_reader.temp.to_s + " Celcius \r\n" +
    ((temperature_reader.temp * F_CONST ) + 32).to_s + " Fahrenheit \r\n" +
    (temperature_reader.temp + K_CONST).to_s + " Kelvin"

  end

  def to_json

    puts ""
    puts "Temperature json:"
    puts ""
    "{Celcius : " + temperature_reader.temp.to_s +
    ", Fahrenheit : " + ((temperature_reader.temp * F_CONST ) + 32).to_s  +
    ", Kelvin : " + (temperature_reader.temp + K_CONST).to_s + "}"

  end

  def to_html

    puts ""
    puts "Temperature html"
    puts ""
    "<ul>
    <li>" + temperature_reader.temp.to_s + " Celcius</li>
    <li>" + ((temperature_reader.temp * F_CONST ) + 32).to_s + " Fahrenheit</li>
    <li>" + (temperature_reader.temp + K_CONST).to_s + " Kelvin</li>
    </ul>"

  end

  def print

    puts to_text
    puts to_json
    puts to_html

  end

end
