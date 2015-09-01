#Import pry
require 'pry'
require 'pry-byebug'

#The apartment class.
class Apartment
  #setter and getter
  attr_accessor :name, :renter, :rent, :bathrooms, :bedrooms, :sqft, :unit

  #Do not need renter and rent for apartments.
  #Initialize the name, square foot, number of bedrooms and bathrooms.
  def initialize(name, sqft, bedrooms, bathrooms)
    @sqft = sqft
    @name = name
    @bathrooms = bathrooms
    @bedrooms = bedrooms
    @renter = nil
    @rent  = nil
    #if you do not define renter and rent, the fucntion will lose them.
  end

  #This method is created out of the box when you create a new clas. I can overwrite it and define it myself like this.
  def to_s
    "Apartment #{name} has #{sqft} square feet"
  end


  def not_occupied?()
    renter.nil?
    #renter == nil
    #self.renter == nil
    #@renter == nil
  end
  #credit score, salary
end
