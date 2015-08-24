require_relative "stacklike"

class Suitcase #defines the suitcase class, allows there to be suitcase objects
end

class CargoHold #defines cargohold class
  include Stacklike #makes the class stacklike, applies the module
  def load_and_report(obj)
    puts "Loading object "
    puts obj.object_id #reports on the current state of the stack

    add_to_stack(obj) #adds items to the instance
  end
  def unload
    take_from_stack #removes items from the instance
  end
end

ch = CargoHold.new #creates instances of the class
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)
first_unloaded = ch.unload
puts "The first suitcase off the plane is"
puts first_unloaded.object_id
