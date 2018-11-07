require 'pry'
require 'norogiri'

class Request
  base_url = "http://www.vizgr.org/historical-events/search.php?"
  doc = Nokogiri::XML(File.open(base_url))
end 