require 'pry'

class Renter
  attr_accessor :credit_score, :salary, :name
  def initialize(name, credit_score, salary)
    @credit_score = credit_score
    @salary = salary
    @name = name
  end
end
