require 'pry'


class Building
  attr_accessor :name, :address, :apartments

  def initialize(name, address, apartments)
    @name = name
    @address = address
    @apartments = []
  end

  def list_units
    puts "There are #{apartments_count} units in #{name}"
    apartments.each do |apartment|
      puts "nit #{apartment.name} has #{apartment.bedrooms} bedrooms &
      #{apartment.bathrooms} bathrooms."
    end

  def to_s
    "The buildings name is #{name}. The building is located at #{address}"
  end

end
