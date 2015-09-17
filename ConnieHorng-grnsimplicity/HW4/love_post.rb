require 'pry'
require 'pry-byebug'

def get_love_interest
  puts "Who do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "Are you thinking of #{love_interest} ?"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer
    when user_answer = 'yes'
      puts "Then call #{love_interest}!"
    when user_answer = 'no'
      puts "Okay. Maybe call #{love_interest} later then"
    else
      puts "Please respond 'yes' or 'no'."
      capture_love_interest_response(love_interest)
    end
end

### This is where we call methods to run our script
get_love_interest
