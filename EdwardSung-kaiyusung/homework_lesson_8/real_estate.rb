#Import classes that are in the lib folder.
require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'
require 'pry'

#create building method.
def create_building
  puts "--------New Building--------"
  puts "What is the buidling name? \n"
  name = gets.strip

  #Ask for the building address.
  puts "What is the building address? \n"
  address = gets.strip

  #Create new building using the building class.
  building = Building.new(address,name)

  #Add a unit to the building.
  add_unit_to_building(building)
end

#Create renter method.
def create_renter
  #Ask for renter's name credit score and annual salary.
  puts "--------New Renter--------"
  puts "What is the renter's name? \n"
  name = gets.strip

  puts "What is the credit score? \n"
  credit_score = gets.strip

  puts "What is the annual salary? \n"
  annual_salary = gets.strip

  #Create a new renter using the renter class.
  Renter.new(name, credit_score, annual_salary)
end

#Create apartment function.
def create_apartment
  #Ask who is staying in apartment, size, number of bedrooms,etc..
  puts "--------New Apartment--------"
  puts "Who is staying in the apartment? \n"
  name = gets.strip

  puts "What is the size of the apartment? \n"
  sqft = gets.strip

  puts "How many numbers of bedrooms? \n"
  bedrooms = gets.strip

  puts "How many numbers of bathrooms? \n"
  bathrooms = gets.strip

  #Create a new apartment using the apartment class.
  Apartment.new(name, sqft, bedrooms, bathrooms)
end

#Function to add unit to a building.
def add_unit_to_building(building)
  #Ask for how many apartments are there in the building.
  puts "How many apartments are there in this building? \n"

  #Get the number of units as an integer.
  units = gets.strip.to_i
  #For each unit do...
  units.times do
    #Create an apartment
    apt = create_apartment
    #Add the apartment to the apartments array.
    building.apartments.push(apt)
  end
  building.list_units
  puts "Looping through building apartments and finding which ones are occupied"
  building.add_renter_to_apartment
end


#num_of_apartment.each do
#  if berry.name != nil
#    puts "#{berry.name} is staying at this apartment!"
#  else
#    puts "This apartment is vacant!"
#  end
#end

#Need to check if the building is occupied or not. If not then, maybe we ned to rent it.

#Can do whatever I want, and this would be due on Monday.
#price for the apartment.
#berry = []
#berry = create_building
#puts create_apartment
#puts create_renter
create_building
