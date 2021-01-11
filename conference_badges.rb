def badge_maker(name)
 return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.map { |name| badge_maker(name)}
end

def assign_rooms(speakers)
  new_array = []
  speakers.each_with_index do |name, i|
    new_array << "Hello, #{name}! You'll be assigned to room #{i + 1}!"
  end
  return new_array
end

def printer(attendees)
  batch_badge_creator(attendees).each{|badge| puts badge}
  assign_rooms(attendees).each{|badge| puts badge}
end

