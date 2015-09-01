require_relative 'lib/Building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "----------New Building -------------"
  puts "What is the buildings name?\n"
  name = gets.strip

  puts "What is the building address?\n"
  address = gets.strip

  puts "How many apartments are available in this building?"
  apartments_count = gets.to_i

  building = Building.new(name, address, apartments_count)

  apartments_count.times do
    #building.apartments << create_apartment
      building.apartments.push(create_apartment)
  end

  building.list_units

end

def create_renter
  puts "-----New Renter---------"
  puts "The new renters name is?"
  renter = gets.strip

  puts "What is #{renter}s credit score? Enter a number."
  credit_score = gets.to_i

  puts "How much monet does #{renter} earn annually?"
  salary = gets.to_i

  Renter.new(name, credit_score, salary)

end


def create_apartment
  puts "-------New Apartment---------"
  puts "Whatis the unit name or number?"
  name = gets.strip

  puts "How many sqft are in the apartment?"
  sqft = gets.strip

  puts "How many bedrooms are in the apartment?"
  bedrooms = gets.strip

  puts "How many bathrooms are in the apartment?"
  bathrooms = gets.strip
  Apartment.new(name, sqft, bedrooms, bathrooms)

end



puts create_building
