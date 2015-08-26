require 'pry'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms,
  :renter, :rent

  def initialize(name, sqft, bedrooms, bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil  #not required to create apartment, but we do want to set it up with them
    @rent = nil  #don't always know renter and rent, but need place holders
  end

  def to_s #overrides built in to_s method,
    #prints this instead when you just say 'puts apartment'
    "Apartment #{name} has #{sqft} square feet, #{bedrooms} bedrooms and #{bathrooms} bathrooms"
  end

  def not_occupied?
    #renter.nil? #also renter == nil
    if @renter != nil
      puts true
    else
      puts false
    end
  end

  def occupied
  end


end

# apartment = Apartment.new("Penthouse - 101", 10000, 4, 4)
# puts apartment #alone, without overriding to_s method, you just get the object id jumble
# apartment.renter = "Leslie"
# apartment.rent = "1,500"
# puts apartment.not_occupied?
