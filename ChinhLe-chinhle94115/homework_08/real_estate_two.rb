require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

  def create_building
    puts "--------New Building--------"
    puts "What is building name?"
    building_name = gets.strip

    puts "What is building address?"
    address = gets.strip
    building = Building.new(building_name, address)

    puts "How many units?"
    num_apts = gets.strip.to_i
    building.apartments = Apartment.create_apt(num_apts)

    building.apartments.each do |apartment|
      num = Random.rand(0...8)
      if num <= 6
        apartment.renter = Renter.create_renter(num)
      end
    end

    puts building
    building.apartments.each do |apartment|
      puts apartment
      apartment.print_renter_info
    end

  end

  create_building
