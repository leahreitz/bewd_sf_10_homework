require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "New building" ##gets user input
  puts "What is the address of the building?"
   address = gets.strip

   puts "What is the name of building?"
   building_name = gets.strip
   building = Building.new(address, building_name) ##must define variable here because we are initiating

   puts "How many units?"
   num_apts = gets.strip.to_i ##user input determines number
   building.apartments = Apartment.apartment_creator(num_apts)

   building.apartments.each do |apartment| ##randomizing rather than letting user do this
     num = Random.rand(0…10) ##running random counter to generate instances of apartment
     if num <= 8
       apartment.tenant = Tenant.random_tenant_generator
     end
   end
   puts building ##building already exists now and the variable is defined
   building.apartments.each do |apartment|
     puts apartment
     apartment.print_tenant_info
    end
 end







puts create_building
