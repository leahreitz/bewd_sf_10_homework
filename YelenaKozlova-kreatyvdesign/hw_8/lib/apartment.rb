require 'pry'
require_relative 'renter'

class Apartment
  attr_accessor :bedrooms, :renter, :name, :bathrooms, :rent, :sqft
  def initialize(name, sqft, bedrooms, bathrooms)
    @bedrooms = bedrooms
    @name = name
    @bathrooms = bathrooms
    @sqft = sqft
    @rent = nil #not required for initiating an instance
    @renter = nil #not required for initiating an instance
  end
end
