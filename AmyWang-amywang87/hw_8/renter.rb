require 'pry'

class Renter

attr_accessor :name, :credit_score, :income

  def initialize(name, credit_score, income)
    @name = name
    @credit_score = credit_score
    @income = income
  end

  def to_s
    puts "#{name} has a credit score of #{credit_score} and earns #{income} every year"
  end

end

renter = Renter.new("john", 800, 300000)
