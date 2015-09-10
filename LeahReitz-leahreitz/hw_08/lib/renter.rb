require 'pry'

class Renter

attr_accessor :name, :creditscore, :salary, :pets

  def initialize(name, creditscore, salary)
    @creditscore = creditscore
    @salary = salary #transform into comma separated number
    @name = name
    @pets = nil
  end

  def to_s
    "Renter #{name} has a credit score of #{creditscore} and an annual salary of #{salary}."
  end

end
