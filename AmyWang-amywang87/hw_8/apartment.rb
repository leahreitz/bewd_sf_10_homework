require 'pry'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :rent, :renter

  def initialize (name, sqft, bedrooms, bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @rent = nil
    @renter = nil
  end

  def to_s #this method is inherited out of the box when you create a new class. I can override it and define myself.
    "Apartment #{name} has #{sqft} square feet"
  end

  #create instance method to check to see if apartment is occupied
  def not_occupied?
    renter.nil? #also renter == nil
  end

end

binding.pry   
apartment = Apartment.new("Penthouse", 1000, 4, 4)
