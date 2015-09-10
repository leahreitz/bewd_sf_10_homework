#the Building with attributes
# -attributes w/ array of apartments
# -each apartment needs to be instance of class called Apartment
# -apartment needs attributes (number, etc)
# -class called Person assoc. with apartment class
#
# Building attributes:
# :address
# :apartments
# :name
#require_relative '../real_estate'

require 'pry'

class Building

attr_accessor :name, :address, :apartments

 def initialize(name, address)
  @address = address
  @name = name
  @apartments = []
end

def list_units
	puts "There are #{apartments.count} units in #{name}"
	apartments.each do |apartment|
		puts "Unit #{apartment.name} has #{apartment.bedrooms} bedrooms & #{apartment.bathrooms} bathrooms."
	end
	
end

def to_s
  "#{name} at #{address} has #{apartments.count} apartments"
end

end

#home = Building.new("Shangri La", "156 Main St.")
# binding.pry
# puts home
# puts home.name
# puts home.address
