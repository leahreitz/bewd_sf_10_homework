require 'pry'

class Building

  attr_accessor :address, :apartments, :name

  def initialize(name, address)
    @address = address
    @apartments = []
    @name = name
  end

  def list_units
    puts "There are #{apartments.count} units in #{name}"
    apartments.each do |apartment|
      puts "Unit: #{apartment.num}. Bedrooms: #{apartment.bedrooms}. Bathrooms: #{apartment.bathrooms}."
    end
  end

end

#building_name = ["Mississippi", "Hamburger", "Francais"]
#building_address = ["100 Jesus dr", "45 Love street", "125 Oops road"]

#building = Building.new(building_name.sample, building_address.sample)
#puts building.list_units
