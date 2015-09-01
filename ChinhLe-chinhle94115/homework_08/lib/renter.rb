require 'pry'
require "pry-byebug"

class Renter
  require 'faker'
  require_relative('apartment')
  #get getter and accessor methods using attr_accessor
  attr_accessor :name, :credit, :salary #create attributes of apartment
  #constructor to make instance variables
  def initialize (name, credit, salary)  #job of initialize is to create an instance
    @name = name
    @credit = credit
    @salary = salary
  end
#class method
  def self.create_renter(num)
    renter_list = []
    num.times do
      name = Faker::Name.name
      credit = Random.rand(700...825)       #random credit score between 700-825
      salary = Random.rand(100000...300000) #random salary from 100-300k

      renter = Renter.new(name, credit, salary)

      puts "#{name} has a #{credit} credit score and $#{salary} annual salary."
      renter_list.push(renter)
      return renter_list
    end
  end



#to override to_s so that it doesn't just print object id when renter is created
  def to_s
    "#{name} has a credit score of #{credit} and makes $#{salary} a year."
  end

end
