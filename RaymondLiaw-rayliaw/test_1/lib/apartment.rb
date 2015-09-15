require 'pry'

class Apartment
  attr_accessor :unit, :sqft, :bedrooms, :bathrooms, :rent, :renter

  def initialize(unit, sqft, bedrooms, bathrooms)
    @unit = unit
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @rent = nil
    @renter = nil
  end

  def is_occupied?
    !renter
  end

  def to_s
    puts "Unit #{unit}: #{sqft} square feet. #{bedrooms}bd/#{bathrooms}ba. $#{rent}. Occupied by #{renter}."
  end
end

### INIT
