class MyStack
  attr_reader :list, :last_index

  def initialize
    @list = []
    @last_index = -1
  end

  def push(object)
    @list << object
    @last_index += 1
  end

  def pop
    @last_index -= 1
    @list.pop
  end

  def peek
    @list.last
  end

  def empty?
    @list.empty?
  end
end
