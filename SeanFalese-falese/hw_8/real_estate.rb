require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/tenants'
require 'pry'

def create_building
  puts "_*_*_*_*_*_*_*_*_*_*_*_*_*_*"
  puts "NEW BUILDING!!!!!!"
  puts "what's the building name"
  name=gets.chomp
  puts "whats the building address?"
  address= gets.chomp
  bldg = Building.new(address,name)
  add_unit_to_bldg(bldg)
end

def create_apt
  puts "*_*_*_*_*_*_*_*_*_*_*_*_*_*_"
  puts "LETS SETUP SOME APARTMENTS!!!!"
  puts "how many square feet"
  sqft = gets.chomp
  puts "how many bedrooms"
  bd = gets.chomp
  puts "how many bathrooms"
  br = gets.chomp
  Apartment.new(sqft, bd, br)
end


def create_tenant
  puts "_*_*_*_*_*_*__*__*_*_*_*_*"
  puts "lets setup a tenant"
  puts "what is their name"
  name = gets.chomp
  puts "what is thier cscore"
  cscore = gets.chomp
  puts "what is their salary"
  salary = gets.chomp
  Tenants.new(name, cscore, salary)
end

def add_unit_to_bldg(bldg)
  puts "how many units"
  n = gets.to_i
  n.times do
  bldg.apartments<<create_apt
  end


end




puts create_building
# puts create_apt
# puts create_tenant



#create a building using user input
