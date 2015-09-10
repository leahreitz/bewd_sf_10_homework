

#rest client is what we will use to get the json code from the website
require 'rest-cleint'
require 'pry'
require 'json'

#create a method that will connect to the mashable api and
# give a place to pass in the url
def connect_to_mashable_api(url)
#give the response a variable title. This is what we will pull from the mashable api
  response = RestClient.get(url)
#pass the response through the JSON.parse function so we can get data we can use
  JSON.parse(response)
end

url = "http://www.mashable.com/stories.json"
