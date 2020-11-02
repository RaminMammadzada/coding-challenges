# Start with your code from last challenge.

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail

  def add(number)
    # your code here
    new_node = Node.new(number)

    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def get(index)
    #your code here
    node = @head

    while index > 0 && node
      node = node.next_node
      index -= 1
    end

    node.value
  end

  def add_at(index,item)
    if @head.nil?
      #if list is empty, the head is the new node
      this_nod=Node.new(item)
      @head=this_nod
    end
    if index==0
      # if index is 0, we insert in the first position
      this_nod=Node.new(item,@head)
      @head=this_nod
    end
    if index >0
      #insert at desired position if index is greater than 0
      ind=index-1
      current=@head
      before_current=@head

      #loop to the desired position before where you wish to insert
      ind.times do
        before_current=current.next_node
      end
      #loop to the desired position where you wish to insert
      index.times do
        current=current.next_node
      end
      #create a new node you wish to insert
      this_nod=Node.new(item)
      after_current=before_current.next_node
      #point node before current to new node
      before_current.next_node=this_nod
      #point new node to the old current node
      this_nod.next_node=after_current


    end
  end

  def remove(index)
    if @head.nil?
      puts "the storage is empty"
    end
    if (index==0)
      #remove the first element from the list
      current=@head
      #get the element after the head and make head equal to it
      current.next=new_current
      @head=new_current
    end
    if (index>0)
      current= get_node(index) #(desired node to be removed)
      before_current= get_node(index-1)
      after_current=current.next_node
      before_current.next_node=after_current
    end
  end

  def get_node(index)
    current=@head
    index.times do
      current=current.next_node
    end
    return current
  end

  def return_list
    elements = []
    current_node = @head
    while current_node.next_node != nil
      elements << current_node
      current_node = current_node.next_node
    end
    elements << current_node
  end
end

list = LinkedList.new

# list.add(3)
# list.add(5)
# list.add_at(1, 11)
# list.add_at(0, 13)
#
# puts list.get(2)
# # => 11
#
# puts list.get(3)
# # => 5

list.add(8)
list.add(3)
list.add_at(1, 5)
list.add_at(2, 4)
list.remove(1)
list.return_list.each { |obj| p obj.value }
# Expected list: [8, 4, 3]