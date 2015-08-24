#array of temperatures
#set target temperature
#detect temp - new instance of temp, get desired temp, turn off or on

#isntance method that decides what to do based on the reading

require 'pry'

class Thermostat #class name - woop woop

  attr_accessor :degrees  #gives the class attribute temperature
  attr_reader :target

    def initialize(temp, target) #creates an instance of Thermostat that takes the temperature
      @degrees = temp
      @target = target
    end

    def calibrate_temp #this is an instance method
      if @degrees > @target #same as self.target, target b/c instance variables live within it
        puts "It's #{degrees}. That's too hot."
      elsif @degrees < @target
        puts "Brr!! It's #{degrees}. Turn on the heat."
      else
        puts "Ahh just right!"
      end

    def self.detect_temperature(all_temps, target_temp)
      all_temps.each do |temp|
        reading = Thermostat.new(temp, target_temp)
        reading.calibrate_temp
      end
    end
end

all_temps = [60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75]
target_temp = 70

Thermostat.detect_temperature(all_temps, target_temp)
#i'm getting an error: 

## how do we write code that will find difference between reported temp and target temp and account for that difference
