require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "New building"
  puts "What is the building name? \n"
  bldg_name = gets.strip

  puts "What is the building address? \n"
  address = gets.strip
  building = Building.new(address, bldg_name)
  add_units(building)
end

def add_units(building)
  puts "How many units? \n" ##putting a binding pry will help look at what we are passing in to 'unit"'
  units = gets.strip.to_i ##figure out how to create an apartment three times
  units.times do
    building.apartment.push(create_apartment)
  end
  building.apt_names
end

def create_apartment
  puts "New apartment"
  puts "What is the name of the apartment? \n"
  apt_name = gets.strip

  puts "How many sqft?"
  sqft = gets.strip

  puts "How many bedrooms?"
  bedrooms = gets.strip

  puts "How many bathrooms?"
  bathrooms = gets.strip

apartment =  Apartment.new(apt_name, sqft, bedrooms, bathrooms)
 puts add_renter(apartment)
end



puts create_building
