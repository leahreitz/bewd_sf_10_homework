require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "----NEW BUILDING----"
  puts "What is the building name?"
  name = gets.strip
  puts "Where is it located?"
  address = gets.strip
  Building.new(name, address)
  add_unit_to_building(building)
end

def add_unit_to_building(building)
  puts "How many units?"
  units = gets.strip.to_i
  #create 3 apartments, push into the apartments array
end

def create_apartment
  puts "----This is an open listing----"
  puts "What is the name of this apartment?"
  name = gets.strip

  puts "How many bedrooms does it have?"
  bedrooms = gets.strip

  puts "How many bathrooms does it have?"
  baths = gets.strip

  puts "How many square feet is the apartment?"
  footage = gets.strip

    Apartment.new(name, bedrooms, baths, footage)
  end

  def create_renter
    puts "What is the renter's name?"
    name = gets.strip
    puts "What is #{name}'s credit score?"
    creditscore = gets.strip
    puts "What is #{name}'s annual salary?"
    salary = gets.strip
    Renter.new(name, creditscore, salary)
  end

create_building
#puts create_apartment
#puts create_renter

# create a building based on user input (gets)

# create a new building, set a certain number of apartments
# have the ability to assign an apartment number and specific information for that buidling
# want to know whether that apartment is rented or not
# associate a renter with that apartment
# loop through the array of apartments, and print info about each instance of the apartment
