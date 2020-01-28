def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  batch = []
  attendees.each do |name|
    batch << badge_maker(name)
  end
  batch
end

def assign_rooms(attendees)
  assigned = []
  attendees.each_with_index(1) do |name, index|
    assigned << "Hello, #{name}! You'll be assigned to room #{index}!"
  end
  assigned
end

def printer(attendees)
  printer_list = batch_badge_creator(attendees).concat assign_rooms(attendees)
end
