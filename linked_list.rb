class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value)
  end
  def add(value)
    current = @head
    while !current.next_node.nil?
      current = current.next_node
    end
    current.next_node = Node.new(value)
  end

  def remove(value)
    current = @head

    if (current.value == value)
      @head = current.next_node
    end

    while !current.next_node.nil? and current.next_node.value != value
      current = current.next_node
    end

    if current.next_node.nil?
      current.next_node = nil
    else
      current.next_node = current.next_node.next_node
    end
  end

  def to_list
    values = []
    current = @head
    while !current.next_node.nil?
      values << current.value
      current = current.next_node
    end
    values << current.value
    values
  end
end

l1 = LinkedList.new(3)
l1.add(4)
l1.add(5)
l1.add(7)
l1.add(9)
puts l1.to_list.to_s

l1.remove(5)
puts l1.to_list.to_s
l1.remove(3)
puts l1.to_list.to_s
l1.remove(9)
puts l1.to_list.to_s
