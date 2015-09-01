require 'pry'

class Renter
  attr_accessor :person, :salary, :credit_score, :age

  def initialize(person, salary, credit_score, age)
    @person = person
    @salary = salary
    @credit_score = credit_score
    @age = age
  end

  def to_s
    "#{person} has a credit score of #{credit_score} and an annual salary of #{salary}"
  end

end

#person = ["Mike", "Peter", "Olivander", "Jesus", nil]
#salary = ["100,000USD", "120,000USD", "300,000USD", "250,000USD"]
#credit_score = ["700", "800", "850", "750"]
#age = ["38", "26", "34", "27"]

#renter = Renter.new(person.sample, salary.sample, credit_score.sample, age.sample)
#puts renter
