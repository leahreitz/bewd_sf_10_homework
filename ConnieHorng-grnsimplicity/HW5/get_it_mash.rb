require 'rest-client'
require 'pry'
require 'json'

def connect_to_api(mash_url)
  response = RestClient.get(mash_url)
  JSON.parse(response)
end

def find_stories(response)
  stories = response["new"]
  puts "**** Mash has published #{stories.count} stories ****"
  return stories
end

def print_stories(stories)
  stories.each do |story| #it says this is an undefined local variable, but thought that I defined the variable through creation of of hash?
    create_story_hash(story["new"])
  end
end

def create_story_hash(story)
  puts new_story = {title: story["title"], author: story["author"], twittershares: story["shares"]}
  return new_story
end


mash_url ="http://mashable.com/stories.json"
mash_json_response = connect_to_api(mash_url)
stories = find_stories(mash_json_response)
print_stories(stories)
