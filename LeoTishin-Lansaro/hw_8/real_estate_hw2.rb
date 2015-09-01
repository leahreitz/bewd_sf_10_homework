require_relative 'lib/building_hw2'
require_relative 'lib/apartment_hw2'
require_relative 'lib/renter_hw2'

require 'pry'

def list_buildings
  building = Building.new(name, address)
  add_units_2_building(building)
end

def add_units_2_building(building)
  puts "How many units? \n"
  units = gets.chomp.to_i
  units.times do
    building.apartments.push(create_apartment)
  end
  building.list_units
end

def list_apartment

  Apartment.new(num, sqft, bedrooms, bathrooms)
end

def list_the_dude

  Renter.new(person, salary, credit_score, age)
end

listing
