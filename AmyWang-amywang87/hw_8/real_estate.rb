require_relative 'lib/practice'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "-----New Building-------"
  puts "What is the building's name?"
  name = gets.strip

  puts "What is the building address?"
  address = gets.strip
  Building.new(name, address)
end

puts create_building
