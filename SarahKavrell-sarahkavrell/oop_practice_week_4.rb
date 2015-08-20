#practice creating classes, class methods and class instances

class Outfit
  attr_accessor :top, :bottom, :outerwear, :shoes
  def initialize (top, bottom, outerwear, shoes)
    @top = top
    @bottom = bottom
    @outerwear = outerwear
    @shoes = shoes
  end


  def self.make_outfits(number)
    outfits = number.to_i
    outfits.times do
      Outfit.random_outfit_maker
    end
  end

  def self.random_outfit_maker

    tops = ["blouse", "tank", "t-shirt", "chambray"]
    bottoms = ["jeans", "shorts", "skirt", "slacks"]
    outerwear = ["jacket", "sweater"]
    shoes = ["boots", "sandals", "flats", "heels"]

    top = tops.sample
    bottom = bottoms.sample
    outerwear = outerwear.sample
    shoes = shoes.sample

    outfit = Outfit.new(top, bottom, outerwear, shoes)
    puts "Hello, you should wear a #{top} with #{bottom} and bring a #{outerwear}. Don't forget your #{shoes}!"
  end

end

#class method can be called outside of a class to make new instances


Outfit.make_outfits(5)
