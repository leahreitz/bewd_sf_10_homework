require 'pry'

class Building
  attr_accessor :name, :address, :apartment

  def initialize(name, address)
    @name = name
    @address = address
    @apartment = []
  end

  def to_s
    "#{name} at #{address} has #{apartments.count} apartments"
  end
end

townsend = Building.new("350 West", "Townsend")

puts townsend
