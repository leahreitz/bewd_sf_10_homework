# Create a building, apartment, and renter based on user input
# Create a building, set a number of apartments, & for each apt, assig

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "*** NEW BUILDING ***"
  print "Enter building name: "
  name = gets.strip
  print "Enter #{name}'s address: "
  address = gets.strip

  building = Building.new(name, address)
  add_apartment_units(building)
end

def add_apartment_units(building)
  print "Enter number of units to add to #{building.name}: "
  units = gets.strip.to_i

  units.times do
    building.apartments << create_apartment
  end

  building.list_units
end

def create_apartment
  puts "*** NEW APARTMENT ***"
  print "Enter the unit number: "
  unit = gets.strip
  print "Enter Unit #{unit}'s square footage: "
  sqft = gets.strip.to_i
  print "Enter the number of bedrooms: "
  bedrooms = gets.strip.to_i
  print "Enter the number of bathrooms: "
  bathrooms = gets.strip.to_i

  Apartment.new(unit, sqft, bedrooms, bathrooms)
end

def create_renter
  puts "*** NEW RENTER ***"
  print "Enter renter's name: "
  name = gets.strip
  print "Enter #{name}'s annual salary: "
  salary = gets.strip
  print "Enter #{name}'s credit score: "
  credit = gets.strip

  Renter.new(name, credit, salary)
end

### INIT
create_building
