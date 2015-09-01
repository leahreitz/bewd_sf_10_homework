#DIRECTIONS
#takes in an apartment array
#if it is rented, print renter's name
#else print "Vacant"

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building #create new instance of building with attributes from user input
  puts "------- NEW BUILDING -------"
  puts "Building name:"
  name = gets.strip
  puts "Building address:"
  address = gets.strip
  building = Building.new(name, address)
  add_units_to_building(building) #call method to print list of apartment info
end

def add_units_to_building(building) #create an array of apartments in the building instance's apartments attribute
  puts "How many units in building?"
  units = gets.strip.to_i #convert user input number to integer
  units.times do #.times method repeats the action 'units' number of times
    building.apartments << create_apartment #add an apartment instance to the building's apartment attribute array
  end
  puts "\n\n------- RENTER INFORMATION -------"
  building.apartments.each do |apartment| #for each apartment instance in the array ask if need to add renter info
    puts "\nIs apartment #{apartment.name} vacant? Yes or no."
    if gets.strip.downcase == "no"
      renter = create_renter
      apartment.renter = renter.name #update apartment's 'renter' attribute
      puts "Monthly rent:"
      apartment.rent = gets.to_i #update apartment's 'rent' attribute
    else
      puts "Confirmed. Apartment #{apartment.name} is vacant."
    end
  end
  building.list_units #call building instance method to list apartment info
  puts "---------- END -----------"
end

def create_apartment #create new instance of apartment with attributes from user input
  puts "\n------- ADD APARTMENT -------"
  puts "Apartment name:"
  name = gets.strip
  puts "Square footage:"
  sqft = gets.to_i
  puts "Number of bedrooms:"
  bedrooms = gets.to_i
  puts "Number of bathrooms:"
  bathrooms = gets.to_i
  apartment = Apartment.new(name, sqft, bedrooms, bathrooms)
end

def create_renter #create new instance of renter with attributes from user input
  puts "------- ADD RENTER -------"
  puts "Renter name:"
  renter_name = gets.strip
  puts "Credit score:"
  credit_score = gets.to_i
  puts "Salary:"
  salary = gets.to_i
  Renter.new(renter_name, credit_score, salary)
end

puts create_building
