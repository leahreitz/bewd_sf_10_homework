require 'pry'


class Building

  attr_accessor :address, :apartments, :name

  def initialize(address, name)
    @address = address
    @apartments = []
    @name = name
  end

  def to_s
    "#{name} at #{address} has #{apartments.count} apartments"
  end
end

def list_units
  puts "there are #{apartments.count} apartments available"
end


# address = ["123 main", "456 Oak", "789 walnut"]
# name = ["Brown building", "winery building", "secret laboratory"]
# apartments = ["1E","2B","3C"]
# t = Building.new(address.sample, name.sample)
# puts"#{t.name}"
