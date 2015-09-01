require 'pry'
require 'pry-byebug'

class Building

 attr_accessor :address, :apartments, :renter

  def initialize(renter, address)
    @address = address
    @apartments = []
    @renter = renter
  end

  def to_s
    "#{renter} at #{address} has #{apartments.count} apartments"
  end

  def list_units
    puts "There are #{apartments.count} units in #{name}"
    apartment.each do |apartment|
      puts "Unit #{apartment.name} has #{apartment.bedrooms} & #{apartment.bathrooms} bathrooms."
   end

  end

end


#building = Building.new("North Park", "San Francisco, CA.")
#puts building

