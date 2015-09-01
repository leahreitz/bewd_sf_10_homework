require 'pry'

class Apartment #create the apartment class
	attr_accessor :name, :footage, :bedrooms, :bathrooms, :rent, :renter #create getter and setter methods using an accessor

	def initialize(name, footage, bedrooms, bathrooms) #the primary job of initialize is creating an instance (apartment), build a constructor with our required attributes
		@name = name #assigning the information received inside the () to instance variables of the same name
		@bathrooms = bathrooms
		@footage = footage
		@bedrooms = bedrooms 
		@renter = nil #set equal to nil because aren't required to create apartment in a building
		@rent = nil #set equal to nil because aren't required to create apartment in a building
	end

#this method is inherited out of the box when you create a new class. I can override and define it myself
	def to_s 
		"Apartment #{name} has #{footage} square feet."
	end 

	def not_occupied?
		renter.nil? #Ruby convention, the same as renter == nil, self.renter == nil, @renter == nill
	end		

end 

