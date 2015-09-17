require 'pry'

class Renter
  attr_accessor :name, :credit_score, :salary, :age, :occupation

  def initialize(name, credit_score, salary)
    @name = name
    @credit_score = credit_score
    @salary = salary
    @age = age
    @occupation = occupation
  end

  def to_s
    "#{name} has a credit score of #{credit_score} and an annual salary of #{salary}."
  end
end


#somehow connect the renter from apartments to the renter here?
#
