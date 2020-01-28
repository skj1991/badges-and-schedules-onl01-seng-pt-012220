def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  batch = []
  attendees.each do |attendee|
    batch << badge_maker(attendee)
  end
  batch
end

def assign_rooms(attendees)
  assigned = []
  attendees.each.with_index(1) do |attendee, index|
    assigned << "Hello, #{attendee}! You'll be assigned to room #{index}!"
  end
  assigned
end

def printer(attendees)
  printer_list = batch_badge_creator(attendees).concat assign_rooms(attendees)
  printer_list.each do |line|
    puts line
  end
end
