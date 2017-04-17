require 'pry'

# def offer_rose(person)
#   puts "Would you take this rose, #{offer_rose}, in exchange for giving an old beggar woman shelter from the bitter cold?"
# end



# town = {
#   residents: ["Maurice", "Belle", "Gaston"],
#   castle: {
#     num_rooms: 47,
#     residents: "Robby Benson",
#     guests: []
#   }
# }
#
# belle = residents.slice[1]
# guests << belle


# friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
# friends.each do |friend|
#   puts "Belle is friends with #{friend}"
# end

class Animal
  attr_accessor(name)

  def initialize
  end

  def get_name
    return @name
  end

  def greet
    puts "Hi! My name is #{@name}!"
  end

end

class Lion
  attr_accessor (pack)
  super(name)

  def initalize (king)
  end

  if (Lion.name == "Simba")
    king == true
  end
else
  puts "You are not the king."
end


binding.pry
