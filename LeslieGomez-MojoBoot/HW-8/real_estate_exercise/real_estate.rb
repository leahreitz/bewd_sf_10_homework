#Add tenants, access square footage, occupied units?, renting->collect info on renter

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
	puts "---------New Building----------"

	puts "What is the address of the new building?"
	address = gets.strip
	
	puts "What is the name of the new building"
	name = gets.strip

	building = Building.new(name, address)
	puts building

	add_unit_to_building(building)
end

def add_unit_to_building(building)
	puts "How many units?"
	units = gets.strip.to_i
	units.times do 
		building.apartments << create_apartment
		#building.apartments.push(create_apartment)
	end
	building.list_units
    #add_renter_to_apartment(new_apartment)
end


def create_apartment
	puts "-------New Apartmenet------------"

	puts "What is the name of the new apartment?"
	name = gets.strip

	puts "What is the square footage of the new apartment?"
	sqft = gets.strip

	puts "How many bedrooms does the new apartment have?"
	bedrooms = gets.strip

	puts "How many bathrooms does the new apartment have?"
	bathrooms = gets.strip

	
	new_apartment = Apartment.new(name, sqft, bedrooms, bathrooms)
    
    add_renter_to_apartment(new_apartment)
end

def add_renter_to_apartment(new_apartment)
	puts "***** We have a new opening in #{new_apartment.name} *****"
	puts "Is someone interested in the unit? Answer YES or NO"
	answer = gets.upcase.strip 
	if answer == "YES"
	  create_renter(new_apartment)
    else
      puts "OK, feel free to create and add a renter when you are ready"
end
end
	
def create_renter(new_apartment)
  puts "------------- New Renter -------------"
  puts "What is the name of the renter?"
  name = gets.strip
  new_apartment.name = name
  puts "What is the renter's credit score?"
  credit_score = gets.strip.to_i
  puts "What is the renter's salary?"
  salary = gets.strip.to_i
  
  new_renter = Renter.new(name, credit_score, salary)
  
  credit_approval(new_apartment, new_renter)
end


 def credit_approval(new_apartment, new_renter)
  if new_renter.credit_score >= 700 || new_renter.salary >= 100000
    #new_renter = Renter.new(name, credit_score, salary)
    puts "#{new_renter.name} has been approved to rent a unit"
    
    puts "How much is the rent per month?"
    #rent = gets.strip.to_i
    new_apartment.rent = gets.strip.to_i

    #new_apartment.renter = new_renter.name
    
    puts new_renter

  else
	puts "We are sorry #{name}, you have not met our basic economic stability requiremenets to rent a unit at this property."
	puts "GOOD DAY SIR/MADAM!"
  end
end 



create_building


# create_apartment

#community_maker