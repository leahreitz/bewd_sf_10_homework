require 'pry'
require 'pry-byebug'
require_relative 'apartment'

class Building

  attr_accessor :building_name, :address, :apartments

  def initialize (building_name, address)
    @building_name = building_name
    @address = address
    @apartments = []
  end


#this overrides an inherited method to_s that just prints out the object id
  def to_s
    "#{building_name} at #{address} has #{apartments.count} apartments."
  end



end
