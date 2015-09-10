class Thermostat

attr_accessor :degrees
attr_reader :target

def initialize(all_temps, target_temp)
  @degrees = temp
  @target = target_temp
end

def calibrate_temp #instance variables can go into any instance method
  if @degrees < @target  #self.target, @target and target are all the same inside of this instance method
    puts "It's #{degrees}."
    turn_on_heater(@degrees) #so it can get into the private class
  elsif @degrees > @target
    puts "It's #{degrees}"
    turn_on_airconditioner(@degrees) #so it can get into the private class
  else
    puts "Ahhh, just right."
  end
end

def self.detect_temperaturre(all_temps, target_temp) #class method
  all_temps.each do |temp|
    reading = Thermostat.new(temp, target_temp)
    reading.calibrate_temp
  end
end


private #all methods after this are private. Can only be called inside of other methods.
#They can not be accessed directly by instance of class

def turn_on_heater #private method
  puts "It's #{degrees}. It's too cold. Turn on the heat"
end

def turn_on_air_conditioner #private method
  puts "It's #{degrees}. That's too hot! Turn on the air conditioner"
end

end

all_temps = [50, 55, 58, 63, 67, 72, 80,82]

target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)
