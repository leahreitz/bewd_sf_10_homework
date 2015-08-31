class Renter

  attr_accessor :name, :age, :credit, :salary

  def initialize(name, age, credit, salary)
    @name = name
    @age = age
    @credit = credit
    @salary = salary
  end

  def to_s
    "#{name} has a credit score of #{credit} and salary of #{salary}."
  end
  
end
