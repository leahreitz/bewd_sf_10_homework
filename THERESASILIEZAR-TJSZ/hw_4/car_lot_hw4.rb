require 'pry'

ford = {brand: "Ford", model: "F150", year: 2014, price: 20000, is_electric: false}
toyota = {brand: "Toyota", model: "Camery", year: 2015, price: 22000, is_electric: false}
honda = {brand: "Honda", model: "Prius", year: 2015, price: 25000, is_electric: true}

hash_merge = ford.merge(toyota)
hash_merge2 = hash_merge.merge(honda)
cars = [hash_merge2]
puts cars

def eco_cars(cars)
  cars.each do |car|
    puts "#{car[:brand]} is like new. It's a #{car[:year]}."
    if car[:is_electric] 
      puts "It's electric so it's good for the enviornment"
    elsif car[:brand] == Toyota
      puts "If you don't care about the planet check out our power yet gas munching #{car[:brand]}"
    elsif car[:brand] == Ford
      puts "we also have a truck if you're interested"
    end
  end


########### what's the proper way to make an array of Hashes............
#cars = [ford, toyota, honda]
#cars.push(ford, toyota, honda)
##################################
#cars = [ford] + [toyota] + [honda]
#puts cars.to_a
################################
#def all_cars
 # array = [all_cars]
  #array.push(hash_merge2)
  #puts all_cars
#end
#######################
#Array.new
#cars = [ford] + [toyota] + [honda]

