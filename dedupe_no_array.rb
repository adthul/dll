require 'doublylinkedlist'

def remove_dupes
  current_n = head

  while(!current_n.nil?) do
    value = current_n.value
    next_n = current_n.cont
    check_n = current_n.cont

    while(!check_n.nil?) do
      if value == check_n.value
        delete(current_n)
        break
      end
      check_n = check_n.cont
    end
    current_n = next_n
  end
end

list = List.new
200.times do |i|
  list.add(rand(100))
end

list.print
list.remove_dupes
list.print
