require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "------- New Building -------"
  puts "What is the building name? \n"
  name = gets.chomp

  puts "What is the building address? \n"
  address = gets.chomp
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

def create_apartment
  puts "------- New apartment -------"
  puts "What is the apartment number? \n"
  num = gets.chomp

  puts "What is the apartment size? \n"
  sqft = gets.chomp

  puts "How many bedrooms are in the apartment? \n"
  bedrooms = gets.chomp

  puts "How many bathrooms are in the apartment? \n"
  bathrooms = gets.chomp
  Apartment.new(num, sqft, bedrooms, bathrooms)
end

def create_the_dude
  puts "------- New the Dude -------"
  puts "Who is that Dude? \n"
  person = gets.chomp

  puts "How much is he making? \n"
  salary = gets.chomp

  puts "What is his credit score? \n"
  credit_score = gets.chomp

  puts "What is his age? \n"
  age = gets.chomp
  Renter.new(person, salary, credit_score, age)
end

create_building
