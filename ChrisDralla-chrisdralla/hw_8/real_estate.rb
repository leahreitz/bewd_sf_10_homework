require 'pry'
require './lib/building'
require './lib/apartment'
require './lib/renter'

#create a building from user input
def create_building

  puts "-----------New Building-----------"

  puts "What is your building name?"
  bldg_name = gets.chomp

  puts "What is your building address?"
  bldg_address = gets.chomp

  bldg_apartments = []

  new_bldg = Building.new(bldg_name, bldg_address)

end

def add_appartments(building)

  puts "How many units are in this building?"
  gets.chomp.to_i.times do
    #add individual apartment to appartments array
    building.apartments.push(create_apartment)
  end

end

def create_apartment

  puts "-----------New Apartment-----------"

  puts "What is the apartment number?"
  apt_unit = gets.chomp

  puts "How many square feet does the apartment have?"
  apt_sqft = gets.chomp

  puts "How many bedrooms does the apartment have?"
  apt_bedrooms = gets.chomp

  puts "How many bathrooms does the apartment have?"
  apt_bathrooms = gets.chomp

  new_apt = Apartment.new(apt_unit, apt_sqft, apt_bedrooms, apt_bathrooms)

end

def create_renter

  puts "-----------New Apartment-----------"

  puts "What is the name of the renter?"
  renter_name = gets.chomp

  puts "What is the age of the renter?"
  renter_age = gets.chomp.to_i

  puts "What is the credit score of the renter?"
  renter_credit = gets.chomp.to_i

  puts "What is the annual salary of the renter?"
  renter_salary = gets.chomp.to_i

  new_renter = Renter.new(renter_name, renter_age, renter_credit, renter_salary)

end

#pass in individual apartment from a building's apartments array; call create_renter if apartment is vacant; print name of renter if occupied
def rent_apartment(apartment)
  #evaluate if apartment is vacant
  if apartment.is_vacant? == true
    #if vacant, call create_renter
    applicant = create_renter
    #if applicant's salary is greater than 3000 / mo., rent the apartment
    if applicant.salary / 12 > 3000
      apartment.renter = applicant
    #if not, print message saying unable to rent
    else
      puts "You are unable to afford this apartment."
    end
  else
    #if !vacant, print renter.name
    apartment.print_status
  end
end

#create a test building with 3 apartments
test_bldg = Building.new("Hayes","55 Page Street")
test_bldg.apartments.push Apartment.new("A", 1000, 1, 1)
test_bldg.apartments.push Apartment.new("B", 1200, 2, 1)
test_bldg.apartments.push Apartment.new("C", 1600, 2, 2)
binding.pry

#new_bldg = create_building
#add_appartments(new_bldg)
