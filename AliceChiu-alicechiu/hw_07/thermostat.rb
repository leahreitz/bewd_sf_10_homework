#1. read temp
#2. set target temp
#3. detect temp
  #A. new instance of temp
  #B. get desired temperature
  #C. turn-off or turn-on
require 'pry'

class Thermostat
  attr_accessor :temperature

#new instance of variable
  def initialize(temperature)
    @temperature = temperature
  end
end

#get desired temperature
  def desired_temp(target_temp)
    if @temperature < target_temp
      puts "Let's turn on heater"
    elsif @temperature > target_temp
      puts "Let's turn off heater"
    else
      puts "No need to adjust the thermostat, #{@temperature} is fine."
    end
    #binding.pry
  end

#class method to compare the array temperature with the target temperature
  def self.compare_temp(all_temps, target_temp)
    all_temps.each do |temperature|
      @temperature = Thermostat.new(temperature)
      @temperature.desired_temp(target_temp)
  end
  #binding.pry
end

#tried to incorporate a random temperature reading but did not get it to work.
#   def self.random_temp
#     hot = []
#     cold = []
#     normal = []
#
#     hot = hot.sample
#     cold = cold.sample
#     normal = normal.sample
# end


#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]

#set target temperature
target_temp = 75

#call the class method
Thermostat.desired_temp(all_temps, target_temp)
