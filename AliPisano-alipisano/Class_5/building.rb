require 'pry'

class Building #create the building class
	attr_accessor :address, :apartments, :name #creates getter and setter attributes 

	def initialize(name, address) #put in required attributes, apartments will be an array of instances apartment
		@name = name
		@address = address
		@apartments = [] #set equal to an empty array
	end

	def to_s #this method is inherited out of the box when you create a new class. I can override and define it myself
		"#{name} at #{address} has #{apartments.count} apartments"
	end	
end
#dfwsd