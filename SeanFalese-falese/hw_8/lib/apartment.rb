require 'pry'


class Apartment

  attr_accessor  :no, :tenant, :sqft, :br, :bd, :rent

  def initialize(sqft, br, bd)
    @rent = nil
    @tenant = nil
    @sqft = sqft
    @br = br
    @bd = bd
  end

  def to_s
    puts "Apartment has #{sqft} sqft"
  end
  def is_occupied?
    #this works for just like an if else statment
    puts tenant.nil?
  end


end




# br = ["1","2"]
# bd = ["1","2","3"]
# sqft = ["1200","1000","1500"]
#
# t = Apartment.new(sqft.sample, br.sample, bd.sample )
#
# puts"BR: #{t.br}, BD: #{t.bd}, SQFT: #{t.sqft}"
# t.to_s
# t.is_occupied?
