require_relative './lib/building.rb'
require_relative './lib/apartment.rb'
require_relative './lib/renter.rb'

require 'pry'
require 'pry-byebug'

  def create_building
    puts "------ New Building ------"
    puts "What is the building name?\n"
    name = gets.strip

    puts "What is the building address?\n"
    address = gets.strip
    Building.new(name, address)
    puts 
    add_units_to_building(building)
  end

  def add_units_to_building(building)
    puts "How many units?\n"
    units = gets.strip.to_i

    units.times do
      building.apartments.push(create_apartment)
    end

  end

#  building.list_units

  def make_apartment
      puts "----- New Apartment -----"
      puts "What's the unit number of the apartment?"
      unit = gets.strip
      puts "How many bedrooms?"
      bedrooms = gets.strip
      puts "How many bathrooms?"
      bathrooms = gets.strip
      Apartment.new(unit, bedrooms, bathrooms)
  end

  def create_renter
  
    puts "------ New Renter ------"
    puts "What is renter's name?\n"
    name = gets.strip

    puts "What is #{name}'s credit score?\n"
    credit_score = gets.strip

    puts "What is #{name}'s annual salary?\n"
    annual_salary = gets.strip
    Renter.new(name, credit_score, annual_salary)

 end

puts create_building
puts create_renter
puts add_units_to_building











#puts create_building

#create a building based on a user's input
# def make_bldg
#  puts "What is your address?"
#  addr = gets.strip

#  puts "What is your phone number"
#  phone_num = gets.strip
# end
#array.push(addr, phone
