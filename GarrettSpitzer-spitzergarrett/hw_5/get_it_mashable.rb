#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #upvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create a 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns

require 'rest-client'
require 'pry'
require 'json'

def connect_to_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end

def find_stories(response)
  stories = response["data"]["children"]
  puts "*************Mashable has blessed us with #{stories.count} stories ***********"
  return stories
end

def print_stories(stories)
  stories.each do |tackle|
    create_story_hash(tackle["data"])
  end
end

def create_story_hash(story)
  story = {title: story["title"], category: story["mashable"], upvotes: story["ups"]}
  puts "Title: #{story[:title"], category: story["mashable"], upvotes: story["ups"]}
end


mashable_url = "http://mashable.com/stories.json"
_json_response = connect_to_api(mashable_url)
stories = find_stories(mashable_json_response)
print_stories(stories)
