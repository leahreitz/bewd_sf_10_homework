#Import classes.
require 'pry'
require 'pry-byebug'

#The renter class.
class Renter
  #setter and getter.
  attr_accessor :name, :credit_score, :annual_salary

  #Initilizing name, credit score, and annual salary.
  def initialize(name, credit_score, annual_salary)
    @name = name
    @credit_score = credit_score
    @annual_salary = annual_salary
  end

  #overwriting to_s.
  def to_s
  "#{name} has a credit score of #{credit_score} and an annual salary of #{annual_salary}!!!"
  end
end
