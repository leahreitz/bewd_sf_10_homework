require 'pry'

class Robot #creates/defines a class

  #creates getter and setter methods for each attribute specified (name, type, origin)
  attr_accessor :name, :type, :origin

    #this method creates new instances of the Robot class; a constructor; a factory that creates bots
    #@instance_variables are available throughout the class
    def initialize(name, type, origin) #this defines the variables
      @name = name #this is an instance variable, which are different from local variables
      @type = type #available within the universe of the class
      @origin = origin
    end

    def self.make_robots(number) #class method; starts with class method and then name
      robots = number.to_i #allows us to pass in the number we request
      robots.times do #loop something a certain number of times based on specifications
        Robot.random_robot_maker
      end
    end

    def self.random_robot_maker
      names = ["Luke", "Niki", "Leah", "Bev", "Phil"]
      types = ["Android", "Super-Android"]
      origins = ["New York", "Boston", "San Francisco", "Philadelphia", "DC"]

      name = names.sample
      origin = origins.sample
      type = types.sample

      robot = Robot.new(name, type, origin) #this is a class method
      puts "Hello, I am #{name}. I am a #{type} from #{origin}.\n"
      puts "#{robot.flying_skills}. #{robot.empathy}. #{robot.laser_fighting_skills}."
    end


    #this is an instance method. It's a behavior that this class (robots) can do.
    def flying_skills
      if type == "Super-Android"
        puts "I can fly." #self.name is an instance of robot that can do this method.
      else
        puts "I can not fly {crying}."
      end

    end

    def laser_fighting_skills
      puts "But I have laser fighting skills." unless type != "Android"
    end

    def empathy
        puts "I feel for you." if origin.length > 6
    end

end

Robot.make_robots(10)



#this creates an instance of Robot
#leah = Robot.new("Leah", "super-android", "Massachusetts")
#puts leah.flying_skills
#puts leah.laser_fighting_skills

#create a class
#set attributes & read/write capabilities
#build a constructor
#instantiate


#array of 5 names
#type - android or super-android
#origin 5 cities
