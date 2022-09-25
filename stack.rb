class Stack
  attr_reader :list, :last_index

  def initialize
    @list = []
    @last_index = -1
  end

  def push(object)
    list << object
    @last_index += 1
  end

  def pop
    list[last_index]
    @last_index -= 1
  end
end
