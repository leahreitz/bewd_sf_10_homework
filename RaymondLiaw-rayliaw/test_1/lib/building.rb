require 'pry'

class Building
  attr_accessor :name, :address, :apartments

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = []
  end

  def to_s
    puts "#{name} at #{address} has #{apartments.count} apartments."
  end

  def list_units
    puts "There are #{apartments.count} units in #{name}."
    
    apartments.each do |apartment|
      puts "Unit #{apartment.unit} is a #{apartment.bedrooms}br/#{apartment.bathrooms}ba with #{apartment.sqft}sqft."
    end
  end
end

### INIT
