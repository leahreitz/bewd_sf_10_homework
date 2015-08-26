require 'pry'

class Renter
  attr_accessor :name, :credit_score, :salary, :pets, :vehicle

  def initialize(name, credit_score, salary)
    @name = name
    @credit_score = credit_score
    @salary = salary
    @pets = nil
    @vehicle = nil
  end

  def to_s
    "The new renter is: #{name} with a credit score of #{credit_score}, who makes $#{salary} a year"
  end
end

# leslie = Renter.new("Leslie G.", 800, 300000)
# puts leslie
# puts leslie.name
# puts leslie.credit_score
# puts leslie.salary
