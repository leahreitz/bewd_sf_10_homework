require 'pry'

class Apartment
  attr_accessor :num, :sqft, :bedrooms, :bathrooms, :renter

  def initialize(num, sqft, bedrooms, bathrooms)
    @num = num
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = []
  end

  def not_occupied?
    @renter.nil?
    puts "Apartment is vacant"
    #also renter == nil
    #renter == nil
    #self.renter == nil
    #renter.nil?
  end
end

num = ["4", "6", "5", "10", "14"]
sqft = ["35", "45", "76"]
bedrooms = ["2", "3", "2"]
bathrooms = ["1", "2", "1"]

puts apartment = Apartment.new(num.sample, sqft.sample, bedrooms.sample, bathrooms.sample)
puts apartment.not_occupied?
