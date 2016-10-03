require 'net/http'
require 'uri'

class TemperatureConverter

  def cmdLine_temp argument

    @temp = argument.first.to_f

  end

  def txtFile_temp location

    @temp = File.read(location).to_f

  end

  def open(url)

    Net::HTTP.get(URI.parse(url))

  end

  def url_temp url

    @temp = open(url).to_f

  end

  def to_text

    "Temperature text:\r\n" +
    @temp.to_s + " Celcius \r\n" +
    ((@temp * (9.0/5.0) ) + 32).to_s + " Fahrenheit \r\n" +
    (@temp + 273.15).to_s + " Kelvin"

  end

  def to_json

    "Temperature json:\r\n" +
    "{Celcius : " + @temp.to_s +
    ", Fahrenheit : " + ((@temp * (9.0/5.0) ) + 32).to_s  +
    ", Kelvin : " + (@temp + 273.15).to_s + "}"


  end

  def to_html
    "<p>Temperature html:</p>
    <ul>
    <li>" + @temp.to_s + " Celcius</li>
    <li>" + ((@temp * (9.0/5.0) ) + 32).to_s + " Fahrenheit</li>
    <li>" + (@temp + 273.15).to_s + " Kelvin</li>
    </ul>"

  end


end
