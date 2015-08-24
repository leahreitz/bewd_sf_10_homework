module Stacklike
  def stack
    @stack ||= [] #instance variable made available through method stack
  end

  def add_to_stack(obj)
    stack.push(obj) #pushes object into the stack array
  end

  def take_from_stack
    stack.pop
  end
end
