require 'pry'

class Renter #lowercase class uppercase name of class
  attr_accessor :name, :annual_salary, :credit_score, :employer

  def initialize(name, annual_salary, credit_score, employer) #build your constructor. Constructor gives you the ability to initialize a new instance.
    @name = name
    @annual_salary = annual_salary
    @credit_score = credit_score
    @employer = employer
end

def to_s
  "Renter #{name} makes #{annual_salary} dollars with a credit score of #{credit_score}"
  end
end

# renter = Renter.new("Sarah", 300000, 780, "General Assembly")
# puts renter
# #credit score and annual salary
