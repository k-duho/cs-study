class Stack
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
    @list.shift
  end
end


stack = Stack.new
stack.push 1
stack.push 12
stack.push 13
p stack.list
p stack.pop


