class MyLinkedList
  attr_reader :list

  def initialize
    @list = []
  end

  def add(object, head_node_index = nil)
    node = Node.new(object)
    if head_node_index
      @list.insert(head_node_index, node)
    else
      @list << node
    end
    refresh_nodes
  end

  def remove(node)
    @list.delete(node)
    refresh_nodes
  end

  def delete_all
    @list = []
  end

  def empty?
    @list.empty?
  end

  def size
    @list.size
  end

  def first_node
    @list.first
  end

  def last_node
    @list.last
  end

  private

  def refresh_nodes
    head_node = @list.first
    @list.each do |node|
      head_node.next_node = node
      node.previous_node = head_node
      head_node = node
    end
  end
end

class Node
  attr_accessor :previous_node, :next_node
  attr_reader :value

  def initialize(object)
    @value = object
  end
end


