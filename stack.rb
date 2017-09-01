class Stack
  def initialize
    @stack = []
  end

  def push(value)
    @stack << value
  end

  def pop
    @stack.pop
  end

  def size
    @stack.size
  end

  def to_a
    @stack
  end
end

stack = Stack.new
stack.push(4)
stack.push(14)
stack.push(24)
puts stack.to_a.to_s
stack.pop
puts stack.to_a.to_s
