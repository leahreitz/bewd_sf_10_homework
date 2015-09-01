#DIRECTIONS
#Read temperature from Nest -> array of temperatures
#Create instance of temperature
#If temperature above target temperature (set range), create a method that reduces the temperature
#If temperature is below target, create method that raises temperature

require 'pry'

class Thermostat
  attr_accessor :degrees #read && write capabilities for degrees
  attr_reader :target #read only for target, don't want to overwrite

  def initialize(temp, target) #create new instance of Thermostat with writeable degrees attribute and set target attribute
    @degrees = temp
    @target = target
  end

  def adjustment #instance method applicable to instance of Thermostat
    if @degrees == @target #if current degrees value is on target
      puts "*No action*"
    elsif @degrees > @target #if current degrees value is greater than target
      puts "*Turn it down*"
      turn_on_cooler(@degrees) #call private method for instance of Thermostat
    else
      puts "*Turn it up*" #if current degress value is less than target
      turn_on_heater(@degrees) #call private method for instance of Thermostat
    end
  end

 def self.detect_temperature(all_temps, target_temp) #class method to run through all instances of Thermostat and evaluate if less, greater, or same as target tempeture attribute
    all_temps.each do |temp| #for each value in all_temps array
      reading = Thermostat.new(temp, target_temp) #create new Thermostat instance with a all_temps array value and set target_temp value
      puts  "\nIt is #{reading.degrees}. The target is #{target_temp}"
      reading.adjustment #apply instance method
    end
 end

#private methods
 private
 def turn_on_heater(number)
   puts "Activate heater."
 end
 def turn_on_cooler(number)
   puts "Active cooler."
 end

end

all_temps = [45, 65, 85, 95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]
target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp) #call Thermostat class method
