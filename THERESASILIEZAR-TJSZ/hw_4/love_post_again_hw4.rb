require 'pry'
require 'pry-byebug'

def cats_or_dogs
  puts "Who do you like more cats or dogs?"
  best_pet = gets.strip
  cats_or_dogs_answer(cats_or_dogs)
end

def cats_or_dogs_answer(cats_or_dogs)
  puts "Do you let your #{best_pet} sleep in your bed?"
  puts "Be honest. 'yes or 'no'."
  pet_bed_answer = gets.strip.downcase
  bed_answer(pet_bed_answer, cats_or_dogs)
end

def bed_answer(pet_bed_answer, cats_or_dogs)
  case pet_bed_answer
  when "yes"
    puts "Really?!? Does your #{best_pet} snore?"
  when "no"
    puts "Really? Where does your #{best_pet} sleep?"
  else 
    puts "Its ok, you can tell me. Answer 'yes' or 'no'." 
    cats_or_dogs_answer(cats_or_dogs)   
  end
end
cats_or_dogs
