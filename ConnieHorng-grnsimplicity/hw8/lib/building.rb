require 'pry'
require 'pry-byebug'

class Building

  attr_accessor :name, :address, :apartments #creates getter and setter methods

  def initialize (name, address) #must be same as above if mandatory; if not mandatory do not need to include as argument
    @name = name
    @address = address
    @apartments = []
  end

def list_units
  puts "There are #{apartments.count} units in the #{name}"
  apartments.each do |apartment|
    puts "Unit #{apartment.name} has #{apartment.bedrooms} bedrooms & #{apartment.bathrooms} bathrooms"
  end  
end

  def to_s
    "#{name} at #{address} has #{apartments.count} apartments"
  end

end
