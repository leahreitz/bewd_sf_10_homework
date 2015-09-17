require 'pry'
require 'pry-byebug'

class Renter

  attr_accessor :name, :credit_score, :annual_salary

  def initialize(name, credit_score, annual_salary)
    @name = name
    @credit_score = credit_score
    @annual_salary = annual_salary
  end


 def to_s
  puts "#{name} has a credit score of #{credit_score} and an annual salary of #{annual_salary}."
  
 end 

end


#renter = Renter.new("James Bond", 800, 5000000, "Oracle Corp")
#puts renter.to_s




