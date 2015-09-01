require 'pry'

class Apartment
  attr_accessor :num, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(num, sqft, bedrooms, bathrooms)
    @num = num
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
  end

  def to_s #override method (inherited)
    "Apartment #{num} has #{sqft} SQFT, #{bedrooms} bedroom(s) and #{bathrooms} bathroom(s)"
  end

  def not_occupied?
    @renter.nil?
    #also renter == nil
    #renter == nil
    #self.renter == nil
    #renter.nil?
  end

end

#num = ["4", "6", "5", "10", "14"]
#sqft = ["35", "45", "76"]
#bedrooms = ["2", "3", "2"]
#bathrooms = ["1", "2", "1"]

#apartment = Apartment.new(num.sample, sqft.sample, bedrooms.sample, bathrooms.sample)
#puts apartment
#puts apartment.not_occupied?
