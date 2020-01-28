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
  array.each_with_index do |name, index|
    index = 1
    "Hello, #{name}! You'll be assigned to room #{index}"
    index += 1
  end
end
