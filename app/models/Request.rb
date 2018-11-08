require 'pry'
require 'json'
require 'net/http'
require 'active_support/core_ext/hash'

class Request
  attr_accessor :begin_date, :end_date

  def initialize(begin_date, end_date)
    @begin_date = begin_date
    @end_date = end_date
  end 

  def make_request
    base_url = "http://www.vizgr.org/historical-events/search.php?begin_date=#{self.begin_date}&end_date=#{self.end_date}"
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