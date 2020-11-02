# Start with your code from LinkedList challenge.


class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class Queue
  def initialize
    @tail = nil
    @head = nil
  end

  def add(value)
    # your code here
    node = Node.new(value)

    if !@tail.nil?
      @tail.next_node = node
    end
    @tail = node

    if is_empty?
      @head = node
    end
  end
  alias_method :"<<", :push

  def remove
    # your code here
    if is_empty?
      @tail = nil
      return -1
    end
    value = @head.value
    @head = @head.next_node
    value
  end

  def is_empty?
    @head.nil?
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1