require 'pry'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :rent, :renter

  def initialize(name, sqft, bedrooms, bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil  #not required
    @rent = nil
  end

  def not_occupied?
    renter.nil?
  end

  def to_s
    "Apartment #{name} has #{sqft} square feet"
  end

end
# 
