require 'pry'

friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

friends.each do |user|
  puts "Belle is friends with #{user}"
end


binding.pry
puts "done"
