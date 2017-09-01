class SimpleQueue
  def initialize
    @queue = []
  end

  def push(value)
    @queue << value
  end

  def pop
    @queue.shift
  end

  def to_a
    @queue
  end
end

q = SimpleQueue.new
q.push(1)
q.push(2)
q.push(3)
q.push(4)
puts q.to_a.to_s
q.pop
puts q.to_a.to_s
q.pop
puts q.to_a.to_s
