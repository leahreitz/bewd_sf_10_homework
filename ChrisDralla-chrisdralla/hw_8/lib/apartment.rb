class Apartment
  #create a class Apartment with attributes for unit, square feet, bedrooms, bathrooms, price, and renter
  attr_accessor :unit, :sqft, :bedrooms, :bathrooms, :price, :renter

  #Apartment constructor only requires first four attributes; price and renter are initalized to nil
  def initialize(unit, sqft, bedrooms, bathrooms)
    @unit = unit
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @price = nil
    @renter = nil
  end

  #create instance method that checks to see if apartment is vacant
  def is_vacant?
    # if renter is nil, apartment is vacant; return true or false
    renter.nil?
  end

  def print_status
    if renter.nil?
      puts "This apartment is vacant."
    else
      puts "This apartment is occupied by #{renter.name}."
    end
  end

end
