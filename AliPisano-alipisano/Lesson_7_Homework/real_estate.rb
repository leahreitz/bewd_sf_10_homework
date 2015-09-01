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
 	
 	building = Building.new(name, address) #create building object and pass through 
 	add_units_to_building(building)
end

def add_units_to_building(building) # how to create an apartment multiple times
	puts "How many apartments do you want?"
	numbers = gets.strip.to_i #converting to an integer so can use .times method
	numbers.times do |i| 
		apartment = create_apartment
		building.apartments.push(apartment) #push apartments into building array
	end
	building.apartments 
end

def create_apartment
	puts "This is a new apartment"
	puts "What is the name of the apartment?"
	name = gets.strip
	
	puts "How many bedrooms is it?"
	bedrooms = gets.strip
	
	puts "How many bathrooms are there?"
	bathrooms = gets.strip
	
	puts "What is the square footage?"
	footage = gets.strip

	apartment = Apartment.new(name, bedrooms, bathrooms, footage)

	puts "Does this apartment have a renter?" 
	response = gets.strip
	if response != "no"
		puts "Who lives in this apartment?"
		renter = create_renter 
	else 
		renter = nil
	end 	
	
	apartment.renter = renter
	apartment 
end

def create_renter
	puts "What is your name?" 
	name = gets.strip
	
	puts "What is your credit score?"
	credit = gets.strip
	
	puts "What is your annual salary?"
	salary = gets.strip
	
	Renter.new(name, credit, salary) #pass the requirements in
end
puts create_building

