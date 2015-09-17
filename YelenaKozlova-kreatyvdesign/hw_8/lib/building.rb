require 'pry'

class Building
  attr_accessor :address, :apartments, :name
  def initialize(name, address)
    @name = name
    @address = address
    @apartments = []
  end
  def list_units #define building instance method
    puts "\n\n------- BUILDING INFORMATION -------"
    puts "Name: #{name}"
    puts "Address: #{address}"
    puts "Number of units: #{apartments.count}\n\n"
    apartments.each do |apartment| #list attributes for each apartment instance nested in building instance's apartments attribution array
      puts "Unit: #{apartment.name}"
      puts "Size: #{apartment.sqft} sq ft"
      puts "Bedrooms: #{apartment.bedrooms}"
      puts "Bathrooms: #{apartment.bathrooms}"
      if apartment.renter != nil #if renter isn't blank
        puts "Current renter: #{apartment.renter}"
      else #if renter = nil
        puts "* VACANT *\n\n"
      end
      if apartment.rent != nil # rent isn't blank
        puts "Monthly rent: #{apartment.rent}\n\n"
      end
    end
  end
end
