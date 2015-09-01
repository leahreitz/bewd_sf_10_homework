require 'pry'

class Building #create the building class
	attr_accessor :address, :apartments, :name #creates getter and setter attributes 

	def initialize(name, address) #put in required attributes, apartments will be an array of instances apartment
		@name = name
		@address = address
		@apartments = [] #set equal to an empty array
	end

	def to_s #haven't covered this yet
		"#{name} at #{address} has #{apartments.count} apartments"
	end	
end

building = Building.new("The Bond Building", "Oakland") #creating a new building
puts building 

