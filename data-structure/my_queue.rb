class MyQueue
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

  def first
    @list.first
  end

  def empty?
    @list.empty?
  end
end

queue = MyQueue.new
queue.push 1
queue.push 12
queue.push 13
p queue.list
p queue.pop


