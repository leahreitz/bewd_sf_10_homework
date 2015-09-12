require 'pry'
require 'pry-byebug'

class Apartment

  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent #establishing setter and getter (reader/writer) methods using accessor method

  def initialize(name, sqft, bedrooms, bathrooms) #build a constructor using the required attributes
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil #don't know if they're there or what is there, so don't want that to be required; no don't use [ ] because we'll create an array later
    @rent = nil
  end

#this method is inherited out of the boxe when you create a new class
  def to_s
    "Apartment #{name} has #{sqft} squarefeet"
  end

  def not_occupied? #want it to return true; no double negatives
    renter.nil? #you can also write renter == nil, self.renter == nil, or @renter == nil
  end
end
