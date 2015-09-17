# 1. to create building with attributes apt. number,
#     :address :apartments :name
# 2. array of apts
# 3. each aprt needs to be an instance
#     need to create apartment class
# 4. one more class Person
require 'pry'
require 'pry-byebug'

#creates getter and setter attributes

class Building
  attr_accessor :name, :address, :apartments

  def initialize (name, address)
    @name = name
    @address = address
    @apartments = []
  end

  def to_s
    "#{name} at #{address} has #{apartments.count} apartments"
  end
end

#  building  =  Building.new ("The Bond Building", "Oakland")
# # binding.binding.pry
#  puts building
