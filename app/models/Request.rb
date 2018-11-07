require 'pry'
require 'json'
require 'net/http'
require 'active_support/core_ext/hash'

class Request
  def make_request
    base_url = 'http://www.vizgr.org/historical-events/search.php?begin_date=11500101&end_date=12501231'
    s = Net::HTTP.get_response(URI.parse(base_url)).body
    end_input = Hash.from_xml(s)
    end_input 
  end 

  def process_request
    result_hash = make_request
    filtered_hash = {}
    result_hash["result"]["event"].each do |event|
      filtered_hash[event["date"]] = event["description"]
    end 
    filtered_hash
  end 
end 