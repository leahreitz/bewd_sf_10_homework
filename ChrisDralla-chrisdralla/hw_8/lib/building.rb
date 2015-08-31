#create a class Building with attributes for address, apartments array, and name of bldg
class Building
  #attr_accessor creates getter and setter methods for Class attributes
  attr_accessor  :address, :apartments, :name

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = []
  end

  def to_s
    "#{name} is located at #{address} and has #{apartments.count} units."
  end

  def list_units
    puts "There are #{apartments.count} apartments in #{name}."
    apartments.each do |apartment|
      puts "Apartment #{apartment.unit} has #{apartment.sqft} square feet, #{apartment.bedrooms} bedrooms, and #{apartment.bathrooms} bathrooms."
    end
  end

end
