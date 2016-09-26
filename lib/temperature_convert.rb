
class TemperatureConverter

  def initialize temp
    @temp = temp
  end

  def convertF

    ((@temp * (9.0/5.0) ) + 32).to_s + " Fahrenheit"

  end

  def convertK

    (@temp + 273.15).to_s + " Kelvin"

  end

  def convertC

    @temp.to_s + " Celcius"
    
  end

end
