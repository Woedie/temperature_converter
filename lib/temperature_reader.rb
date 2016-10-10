require 'net/http'
require 'uri'

class TemperatureReader

  def cmdLine_temp argument

    argument.first.to_f

  end

  def txtFile_temp location

    File.read(location).to_f

  end

  def url_temp url

    Net::HTTP.get(URI.parse(url)).to_f

  end
end
