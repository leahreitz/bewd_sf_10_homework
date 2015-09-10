#needs a script that allows them to create a building w attributes
#we come up with attributes of the buiding (local variables)
#needs ability to be associated with an array of apartments
#each apt is in instance of class Apartments
#we can decide on attributes of the apartments
#we need one more class called person
#building needs to have attributes
require 'pry'

class Building
  attr_accessor :address, :apartments, :name #getter/setter attributes

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = [] #includes the array of apartments - why can we do this without passing it in?
  end

  def to_s #we don't know why we are doing this quite yet
  "#{name} at #{address} has #{apartments.count} apartments."
  end

end
