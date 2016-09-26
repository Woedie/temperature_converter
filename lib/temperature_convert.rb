
class TemperatureConverter

  def cmdLine_temp argument

    @temp = argument.first.to_f

  end

  def txtFile_temp location

    @temp = File.read(location).to_f

  end

  def html_temp url

    @temp = temp

  end

  def to_text

    "Temperature text:\r\n" +
    @temp.to_s + " Celcius \r\n" +
    ((@temp * (9.0/5.0) ) + 32).to_s + " Fahrenheit \r\n" +
    (@temp + 273.15).to_s + " Kelvin"

  end

end
