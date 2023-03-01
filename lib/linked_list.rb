require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    #switch @tail & @head
    #cycle through each node and switch prev and next vals
    curr = @head
    @head = @tail
    @tail = curr
    while !curr.nil?
      prev = curr.prev_node
      curr.prev_node = curr.next_node
      curr.next_node = prev
      curr = curr.prev_node
    end

  end
end
