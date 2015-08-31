#practice creating classes, class methods and class instances

#create a class called outfit
class Outfit
#set the read and write capabilities
  attr_accessor :top, :bottom, :outerwear, :shoes
#set the initialize function for how to make new outfits, make .new available
  def initialize (top, bottom, outerwear, shoes)
    @top = top
    @bottom = bottom
    @outerwear = outerwear
    @shoes = shoes
  end

#create a class function to make outfits
  def self.make_outfits(number)
#change the number to an integer
    outfits = number.to_i
#create a loop that will operate (number) times to "do" the random_outfit_maker function
    outfits.times do
#run the random_outfit_maker function (number times)
      Outfit.random_outfit_maker
    end
  end

  #create a function that will generate random outfits
  def self.random_outfit_maker

  #set the arrays of what each instance variables will be
    tops = ["blouse", "tank", "t-shirt", "chambray"]
    bottoms = ["jeans", "shorts", "skirt", "slacks"]
    outerwear = ["jacket", "sweater"]
    shoes = ["boots", "sandals", "flats", "heels"]

#set the variable to get a random sample from the array
    top = tops.sample
    bottom = bottoms.sample
    outerwear = outerwear.sample
    shoes = shoes.sample

#create new instances of outfits
    outfit = Outfit.new(top, bottom, outerwear, shoes)

#prints information with interpolation 
    puts "Hello, you should wear a #{top} with #{bottom} and bring a #{outerwear}. Don't forget your #{shoes}!"
  end

end

#class method can be called outside of a class to make new instances


Outfit.make_outfits(5)
