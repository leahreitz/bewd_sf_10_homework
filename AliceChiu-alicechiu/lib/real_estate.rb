# a way to prompt the usr
#if not occupied, then rent it
#if rented, collect information on that renter

#there seems to be some issue with adding lib here. Running
#the script gives me an error about require_relative.
# real_estate.rb:6:in `require_relative': cannot load such file -- /Users/alice/my_projects/bewd_sf_10/lib/lib/building (LoadError)
# 	from real_estate.rb:6:in `<main>'

require_relative 'lib/building'
require_relative 'lib/apartments'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "----------------New Building--------------------"
  puts "What is your building name? \n"
    name = gets.strip
  puts "What is the building address? \n"
    address = gets.strip
  building = Building.new(name, address)
  add_units_to_building(building)
end

def add_units_to_building(building)
  puts "How many units? \n"
  binding.pry
  units = gets.strip.to_i
  units.times do
    building.apartments << create_apartment #or building.apartments.push(create_apartment)
  end
    building.list_units

  #apartment.each do |apartment|

end

def create_renter
  puts "--------------renter----------"
  puts "What is renter's name?\n "
  name = gets.strip
  puts "What is your credit score?"
    credit_score = gets.strip
  puts "What is your annual salary?"
    annual_salary = gets.strip
end

def create_apartment
  puts "-----------Apartment----------"
  puts "What is the unit number or name?\n"
  name = gets.strip

  puts "How many square feet?"
    sq_feet = gets.strip
  puts "How many bedrooms does the apartment have?"
    bedrooms = gets.strip
  puts "How many bathrooms?"
    bathrooms =gets.strip

end


puts create_building
