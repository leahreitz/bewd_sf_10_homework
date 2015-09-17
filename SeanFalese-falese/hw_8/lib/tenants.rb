require 'pry'
class Tenants
  attr_accessor :name, :cscore, :salary

  def initialize (name, cscore, salary)
    @name = name
    @cscore = cscore
    @salary = salary
  end

  def self.recruit(name, cscore, salary)

  t2 = Tenants.new(name,cscore,salary)
  puts "#{name}"
  end

  def to_s
  puts "#{name}, #{cscore}, #{salary}"

  end


end

# t = Tenants.recruit("sean","800","300k")
