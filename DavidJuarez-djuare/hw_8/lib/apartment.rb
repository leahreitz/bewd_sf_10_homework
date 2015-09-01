require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize (name, sqft, bedrooms, bathroomms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
  end
 
  #this method is inherited out of the box when you create a new class. I can override
  # it and define myself like this
  def to_s
    "Apartment #{name} has #{sqft} square feet, #{bedrooms} bedrooms, #{bathrooms} bathrooms"
  end

  def not_occupied?
    renter.nil? # also renter == nil
  end


end
  
  

#apartment = Apartment.new("Penthouse - 101", 10000, 4, 4)
#puts apartment
#apartment.not_occupied?



