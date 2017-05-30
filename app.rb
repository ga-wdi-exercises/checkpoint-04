require "pry"

class Belle

@friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

def say_friends
  puts "Belle is friends with #{@friends.each}"
end

say_friends
end

binding.pry
