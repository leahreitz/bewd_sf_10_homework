require 'pry'

class Apartment #defines class
  attr_accessor :name, :bedrooms, :baths, :footage, :renter #getter and setter methods for the variables

  def initialize (name, bedrooms, baths, footage) #constructor, creates an instance with instance variables
    @bedrooms = bedrooms #assigns instance variables
    @baths = baths
    @footage = footage
    @name = name
    @renter = nil #bc not required to create an apartment
    @rent = nil
  end

#this method is inherited out of the box when you create a new class, which would just print an identity.
#i can override it and define method myself like this:
  def to_s
    "The #{name} has #{bedrooms} bedrooms, #{baths} baths. It is #{footage} sq. feet"
  end

  def not_occupied?
    #if renter == nil
    #  puts "True"
    #else puts "False"
    renter.nil?
      # or renter == nil
      # self.renter == nil
      # @renter == nil
    end
end



#renter class with attributes credit score, salary, pets,
