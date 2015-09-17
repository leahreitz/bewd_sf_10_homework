#Have a why
require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name, sqft, bedrooms, bathrooms)# not all attributes are required, ones in () are required
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil#when you dont need a collection, we can use nil
    @rent = nil
  end

  def not_occupied?
    renter.nil? # also renter == nil [same as .nil?]
    # self.renter == nil #same as above
    # @renter == nil #same as above
  end

  def to_s #this method is inherited out of the box when you create a new class. I can override it and define myself like this.
    "Apartment #{name} has #{sqft} square feet"
  end

end
#
# apartment = Apartment.new("Penthouse -101", 10000, 4, 4)
#
#
# puts apartment
# puts apartment.not_occupied?
