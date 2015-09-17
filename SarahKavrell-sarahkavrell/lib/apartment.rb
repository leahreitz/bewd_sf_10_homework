require 'pry'

class Apartment #define the class
  attr_accessor :bedrooms, :bathrooms, :price, :unit, :renter #set the writer and reader method

  def initialize (bedrooms, bathrooms, unit)#build the constructor - these are required to create an instance of the apartment
    @bedrooms = bedrooms #assigning the required elements to instance variables
    @bathrooms = bathrooms
    @price = nil
    @unit = unit
    @renter = nil #these aren't necessary, but if you want to define them, you have to make them nil. They will still be available to you when you want
  end

#this method is inherited out of the box when you create a new class.
#I can override it and define it myself like this
  def to_s
  "Apartment #{unit} has #{bedrooms} bedrooms"
  end

def is_occupied?
 if renter == nil #also renter.nil?
   puts "The apartment is available"
 elsif puts "The apartment is occupied"
 end
end

end

# apartment = Apartment.new("3", "3", "1A")
# puts apartment
# apartment.is_occupied?
