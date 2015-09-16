require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
    puts "-----------New Building-----------"
    puts "What is the building name?"
    name = gets.strip

    puts "What is the building address?"
    address = gets.strip

    mybuilding = Building.new(name, address)
    add_unit_to_building(mybuilding)
end

def add_unit_to_building(currbuilding)
  puts "How many units?"
  units = gets.strip.to_i
  units.times do #loop through this a certain number of times, and create an apartment each
    currbuilding.apartments << create_apartment #building.apartments.push(create_apartment) #create instance and put them in the array
  end
  currbuilding.list_units #then list the units and get some basic information
end
#how to create an apartment 3 times


def create_apartment
  puts "--------New Apartment----------"
  puts "What is apartment name?"
  name = gets.strip

  puts "What is the squarefeet?"
  sqft = gets.strip

  puts "What is the number of bedrooms?"
  bedrooms = gets.strip

  puts "What is the number of bathrooms?"
  bathrooms = gets.strip

  puts "Who is the renter?"
  rent = gets.strip

  puts "What is the rental amount?"
  rent = gets.strip

  Apartment.new(name, sqft, bedrooms, bathrooms)
end

def create_renter
  puts "---------New Renter-----------"
  puts "What is the renter's name?"
  name = gets.strip

  puts "What is the #{name}'s' credit score?"
  credit_score = gets.strip

  puts "What is the #{name}'s annual salary?"
  annual_salary = gets.strip

  Renter.new(name, credit_score, annual_salary)
end

create_building
