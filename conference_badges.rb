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
  array.each_with_index do |name, index|
    assigned << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  assigned
end

def printer(attendees)
  printer_list = batch_badge_creator(attendees).concat assign_rooms(attendees)
  printer_list.each do |line|
    puts line
  end
end
