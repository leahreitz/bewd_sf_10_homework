require 'pry'

class Renter #create the renter class
	attr_accessor :name, :credit, :salary, :pets 

	def initialize(name, credit, salary) #the primary job of initialize is creating an instance, build a constructor with our required attributes
		@name = name
		@credit = credit #assigning the information received inside the () to instance variables of the same name
		@salary = salary
		@pets = nil
	end

#this method is inherited out of the box when you create a new class. I can override and define it myself
	def to_s 
		"Renter has a credit score of #{credit} and an annual salary of #{salary}."
	end 
end

# renter = Renter.new(800, 300000)	
# puts renter 