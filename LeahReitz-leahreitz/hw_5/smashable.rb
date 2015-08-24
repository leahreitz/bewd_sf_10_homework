require 'rest-client'
require 'pry'
require 'json'

def get_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end


mashable_url = "http://mashable.com/"
