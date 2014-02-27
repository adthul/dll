class Node
  attr_accessor :value, :cont, :prev

  def initialize(value, cont, prev)
    @value = value
    @cont = cont
    @prev = prev
  end
end

class List
  attr_reader :head

  def initialize
    @head = nil
    @last = nil
  end

  def add(value)
    new_n = Node.new(value, nil, @last)
    @head = new_n if head.nil?
    @last.cont = new_n unless @last.nil?
    @last = new_n
  end

  def delete(node)
    if node == @head
      @head = node.cont
    end

    node.prev.cont = node.cont unless node.prev.nil?
    node.cont.prev = node.back unless node.cont.nil?
  end

  def list_count
    count = 0
    node = @head
    while !node.nil?
      puts node.value
      node = node.cont
      count += 1
    end
    puts "List Count: #{list_count}"
  end
end
