require 'pry'
require 'pry-byebug'

#a factory that collects renters
class Renter
  attr_accessor :name, :credit_score, :annual_salary

#build constructor here
  def initialize(name, annual_salary)
    @name = name
    @credit_score = 800
    @annual_salary = annual_salary
  end

  binding.pry

#wanted to randomly generate a renter based on credit score and salary. Then match it with an empty apartment.
  def self.random_renter(name, credit_score, annual_salary)
    name= ["Bob", "Lisa", "Dali", "Don", "Mum"]
    credit_score = [450, 978, 234, 444, 809]
    annual_salary = [456788, 12344, 60655, 67888]

    name = name.sample
    credit_score = credit_score.sample
    annual_salary = annual_salary.sample

    renter = Renter.new(name, credit_score, annual_salary)
    puts " #{name} has a credit score of #{credit_score} and annual salary of #{annual_salary}"
  end

  def renter_conditions
      if credit_score > 800
        puts "You are now occupied in Unit 344"
      elsif credit_score <=750
        puts "You will be on the waiting list."
      else
        puts "You have been denied this unit."
  end
end

# I am not sure why we need to define a method called to_s here
  def to_s
    "#{name} has a credit score of #{credit_score} and an annual salary of #{annual_salary}"
  end
end

# renter = Renter.new ("James Bond", 800, 500000)
puts Renter.new(name, credit_score, annual_salary)
