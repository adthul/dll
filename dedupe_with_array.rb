require 'doublylinkedlist'

def remove_dupes
  current_n = head
  dupes = []
  while(!current_n.nil?) do
    value = current_n.value
    next_n = current_n.cont

    if dupes.include? value
      delete(current_n)
    else
      dupes << value
    end

    current_n = next_n
  end
end

@list = List.new
200.times do |i|
  @list.add(rand(100))
end

@list.count
@list.remove_dupes
@list.count
