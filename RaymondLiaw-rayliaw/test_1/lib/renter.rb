require 'pry'

class Renter
  attr_accessor :name, :credit_score, :annual_salary, :pets

  def initialize(name, credit_score, annual_salary)
    @name = name
    @credit_score = credit_score
    @annual_salary = annual_salary
  end

  def to_s
    puts "#{name} makes $#{annual_salary}/yr (credit score: #{credit_score})."
  end
end

### INIT
