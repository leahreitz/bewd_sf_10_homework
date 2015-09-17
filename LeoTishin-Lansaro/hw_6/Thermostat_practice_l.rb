require 'pry'

class Thermostat_l #class creation
  attr_accessor :fahrenheit, :target_fahrenheit #applying instances to class

  def initialize(fahrenheit, target_fahrenheit) #defining variables for instances
    @fahrenheit = fahrenheit
    @target_fahrenheit = target_fahrenheit
  end

  def self.detect(temperature_range, target_fahrenheit) #Class method - "self...."
    temperature_range.each do |fahrenheit| #calling range to do each instance separate
      fahrenheit = Thermostat_l.new(fahrenheit, target_fahrenheit) #applying range to the class
      fahrenheit.fixing_temp #calling instance method on defined information
    end
  end

  def fixing_temp #Instance method
    if @fahrenheit > @target_fahrenheit #instances (conditions)
      puts "Temperature is: #{fahrenheit}. Automatic system turn on - cooling down"
    elsif @fahrenheit < @target_fahrenheit #instances (conditions)
      puts "Temperature is: #{fahrenheit}. Automatic system turn on - heating up"
    else
      puts "Temperature is: #{fahrenheit}. Automatic system turn off"
    end
  end
end

temperature_range = [91, 32, 73, 44, 35, 75, 72, 68, 92, 72, 93, 71, 72, 75, 100] #ginving range of instances
temperature_range2 = temperature_range.sample(5)
target_fahrenheit = 72 #target instance
Thermostat_l.detect(temperature_range2, target_fahrenheit) #calling method (class method)
