class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail

  def initialize
    @head = nil
  end

  def add(number)
    # your code here
    if @head
      find_tail.next_node = Node.new(number)
    else
      @head = Node.new(number)
    end
  end

  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

  def get(index)
    # your code here
    counter = 0
    node = @head
    while counter < index
      node = node.next_node
      counter += 1
    end
    node.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(0)
# => 5