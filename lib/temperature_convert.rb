require 'net/http'
require 'uri'

class TemperatureConverter

  F_CONST = 9.0/5.0
  K_CONST = 273.15

  def cmdLine_temp argument

    @temp = argument.first.to_f

  end

  def txtFile_temp location

    @temp = File.read(location).to_f

  end

  def url_temp url

    @temp = Net::HTTP.get(URI.parse(url)).to_f

  end

  def to_text

    puts ""
    puts "Temperature text:"
    puts ""
    @temp.to_s + " Celcius \r\n" +
    ((@temp * F_CONST ) + 32).to_s + " Fahrenheit \r\n" +
    (@temp + K_CONST).to_s + " Kelvin"

  end

  def to_json

    puts ""
    puts "Temperature json:"
    puts ""
    "{Celcius : " + @temp.to_s +
    ", Fahrenheit : " + ((@temp * F_CONST ) + 32).to_s  +
    ", Kelvin : " + (@temp + K_CONST).to_s + "}"

  end

  def to_html

    puts ""
    puts "Temperature html"
    puts ""
    "<ul>
    <li>" + @temp.to_s + " Celcius</li>
    <li>" + ((@temp * F_CONST ) + 32).to_s + " Fahrenheit</li>
    <li>" + (@temp + K_CONST).to_s + " Kelvin</li>
    </ul>"

  end

  def print

    puts to_text
    puts to_json
    puts to_html

  end

end
