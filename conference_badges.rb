def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  batch = []
  array.each do |name|
    batch << badge_maker(name)
  end
  batch
end

def assign_rooms(array)
  assigned = []
  array.each_with_index(1) do |name, index|
    assigned << "Hello, #{name}! You'll be assigned to room #{index}!"
  end
  assigned
end

def printer(array)
  puts batch_badge_creator(array)
end
