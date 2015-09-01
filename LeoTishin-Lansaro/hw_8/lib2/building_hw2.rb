require 'pry'

class Building

  attr_accessor :address, :apartments, :name

  def initialize(name, address)
    @address = address
    @apartments = []
    @name = name
  end

  def self.listing(number)
    buildings = number.to_i
    buildings.times do
      Building.create_building
    end
  end

  def self.create_building
    building_name = ["Mississippi", "Hamburger", "Francais"]
    building_address = ["100 Jesus dr", "45 Love street", "125 Oops road"]

    puts "Here some listing for you: #{building_name.sample} on #{building_address.sample}.\n"
    puts "-----\n"
  end
end

Building.listing(2)
