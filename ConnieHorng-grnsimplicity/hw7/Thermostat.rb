#Conceptually - Nest has all the temperature information, turn it into an array
#Information also includes user preferences
#if tempearture is above or below user preferences, adjust tempature accordingly
#or shut it down too
require 'pry'

class Thermostat

  attr_accessor :degrees
  attr_reader :target

  def initialize(temp, target)
    @degrees = temp
    @target = target
  end

  def calibrate_temp
    case
    when @degrees > @target #self.target, @target, and target are all the same inside the instance because @instance_variable live
      puts "It's #{degrees}. It's too hot. Turn on AC."
    when  @degrees < @target
      puts "It's #{degrees}. It's too cold. Turn on the heat."
    else
      puts "Just right. Stay at this temperature."
    end
  end

  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temp|
      reading = Thermostat.new(temp, target_temp)
      reading.calibrate_temp
    end
  end
end

private #private methods can only be called inside of other methods; they cannot be accessed by a instance variable or a class method


all_temps = [45, 65, 85, 79, 99, 12, 23, 40, 75, 76, 100, 10, 52, 22, 75]
target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)
