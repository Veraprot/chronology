require 'pry'
require 'json'
require 'net/http'
require 'active_support/core_ext/hash'

class Request
  def make_request
    base_url = 'http://www.vizgr.org/historical-events/search.php?begin_date=17000101&end_date=17201231'
    s = Net::HTTP.get_response(URI.parse(base_url)).body
    end_input = Hash.from_xml(s)
    end_input 
  end 

  def process_request
    result_hash = make_request
    result_hash.class
  end 
end 