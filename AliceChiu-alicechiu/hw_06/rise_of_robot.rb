########create a class###########
      #set attributes and read/write capabilities
      #build a constructor # a way to create an instance of a class
      #instantiate

#######Ruby conventions##########
      #class is never plural
      #name in class should always be capitalized

require 'pry'
require 'pry-byebug'

class Robot
  #creates getter and setter methods for each attribute
  attr_accessor :name, :type, :origin 

#this method creates new instances of the robot class
#instance variables are available throughout the class
#@name is an instance variable; can live in most methods within the class
#creates getter && setter methods for each attribute

  def initialize(name, type, origin) #only job to create robots.
    @name = name
    @type = type
    @origin = origin
  end

# number of robots will be according to the number we pass towards the bottom of the script. 
  def self.make_robots(number)
    robots = number.to_i
    robots.times do
      robot = Robot.new("Kayann", "Android", "Chicago")
      puts "#{robot.name} has been created"
        Robot.random_robot_maker
    end
  end

#this class method will randomly generate a robot
  def self.random_robot_maker
    names = ["Heisenberg", "Jesse", "Marin", "Benson", "Dexter"]
    origins = ["Charming", "Stockton", "San Diego", "Rialto", "Pasadena"]
    types = ["Android", "Super-Android"]

    name = names.sample
    origin = origins.sample
    type = types.sample
    #binding.pry

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was manufactured in #{origin}.\n"
    puts "#{robot.flying_skills} and #{robot.empathy}!"
    puts "#{robot.laser_fighting_skills}"
  end

#instance method 
  def empathy
    if origin == "San Diego"
      "I do not have empathy"
    else
      "I have empathy"
    end
  end

  #this is an instance method. 
    ##an instance knows who it is. self refers to the instance of robot that called this method
  def flying_skills
    if type == "Super-Android"
      "I can fly"
    else
      "I cannot fly"
    end
  end

#instance method 
  def laser_fighting_skills
    puts "I am #{name}. I have laser fighting skills."
  end
end

# nana = Robot.new("Nana", "Super-Android", "New Orleans") #new will create new robot. passed in three things.
# #binding.pry
# puts nana.flying_skills

#to call a class, start with class name
Robot.make_robots(50)

