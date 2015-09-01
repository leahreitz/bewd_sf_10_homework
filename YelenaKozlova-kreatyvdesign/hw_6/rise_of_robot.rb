require 'pry'
require 'pry-byebug'

class Robot

  attr_accessor :name, :type, :origin #creates getter && setter methods for each attribute

  def initialize(name,type,origin) #this method creates new instances of the robot class
    @name = name
    @type = type
    @origin = origin
  end

  def self.make_robots(number) #class method that creates a selected number of robot instances
    robots = number.to_i #convert input number to integer to work with .times function
    robots.times do #iterate the random_robot_maker function to create the requested number of robot instances
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker #class method that creates instances of robots with randomly picked attributes
    #arrays of availbale attributes to pick from
    names = ["Tom","Katy","Ben","Melanie","Josh"]
    type = ["Android","Super-Android"]
    origins = ["New York", "Toronto", "San Francisco","Tokyo","Atlanta"]
    #randomize selection with .sample array method
    name = names.sample
    origin = origins.sample
    type = type.sample

    robot = Robot.new(name,type,origin) #create a new robot instance with randomly selected attributes from arrays above
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
    puts "#{robot.flying_skills}"
    puts "#{robot.laser_fighting_skills}"
    puts "#{robot.empathy}"
  end

  def flying_skills #instance method applicable to instance of Robot class
    if type == "Super-Android"
     "I can fly!"
    else
      "I can't fly {crying}"
    end
  end

  def laser_fighting_skills #instance method applicable to instance of Robot class
    if type == "Android" && origin == "San Francisco"
    "I have laser fighting skills."
    else
      "No laser for me."
    end
  end

  def empathy #instance method applicable to instance of Robot class
    if name == "Katy" || name == "Josh"
      "I'm friendly"
    else
      "I'm mean"
    end
  end

end

Robot.make_robots(10) #call the make_robots class method on Robot class with input number of 10
