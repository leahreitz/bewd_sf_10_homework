require 'pry'

class Building
  attr_accessor :name, :address, :apartments

def initialize(name, address)
  @address = address
  @apartments = []
  @name = name
end

def list_units
  puts "There are #{apartments.count} units in #{name}" #this part is working but not past this
  apartments.each do |apartment|
    puts "Unit #{apartment.unit} has
    #{apartment.bedrooms} and
    #{apartment.bathrooms}"
  end
end

def to_s
  "#{name} at #{address} has #{apartments.count} apartments."
  end
end
