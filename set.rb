class Set
  def initialize
    @set = []
  end

  def add(value)
    if !@set.include?(value)
      @set << value
    end
  end

  def remove(value)
    @set.delete(value)
  end

  def to_a
    @set
  end
end

set = Set.new
set.add(1)
set.add(2)
set.add(3)
set.add(2)
set.add(3)
set.add(5)
puts set.to_a.to_s

set.remove(5)
puts set.to_a.to_s

set.remove(7)
puts set.to_a.to_s
