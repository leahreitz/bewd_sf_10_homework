#Import pry
require 'pry'
require 'pry-byebug'

#This class is to create a building.
class Building
  #creates the getter and setter attributes.
  attr_accessor :address, :apartments, :name

  #initialize address, name and apartments.
  def initialize(address, name)
    @address = address
    @name = name
    @apartments = []
  end

  #self would be an instance of building.
  #function to list units
  def list_units
    puts "There are #{apartments.count} in this building."
    apartments.each do |apartment|
      puts "The apartment renter's name is #{apartment.name}."
      puts "The apartment has #{apartment.bedrooms} number of bedrooms."
    end
  end

  #output function.
  def to_s
    "#{name} at #{address} has #{apartments.count} apartments"
  end

  def add_renter_to_apartment
    sum = 1
    apartments.each do |apartment|
      if apartment.name != ""
        puts "This is apartment number #{sum}."
        puts "#{apartment.name} is staying at this apartment!"
        apartment.renter = apartment.name
        puts "What is the rent? \n"
        apartment.rent= gets.strip
        puts "The rent of the apartment is #{apartment.rent}"
      else
        puts "This is apartment number #{sum}."
        puts "This apartment is vacant would you like to add a renter? yes or no? \n"
        if gets.strip == "yes"
          puts "Who is going to rent this apartment? \n"
          apartment.renter = gets.strip
          puts "What is the rent? \n"
          apartment.rent = gets.strip
          puts "#{apartment.renter} is going to rent this apartment and the rent is #{apartment.rent}"
        end
      end
      sum += 1
    end
  end

end
