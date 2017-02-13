# Question 1

def offer_rose (a1="Young Prince")
  puts "Would you take this rose, #{a1}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end


# def offer_rose
#   puts "Would you take this rose, " + offer_rose + ", in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
#
# offer_rose ("young prince")

# Question 2
town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}
residents.delete(2)
residents << 'Belle'

#Question 3
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

friends.each do |i|
puts "Belle is friends with #{i}"
end

# Question 4
class Animal (name, greet)
  attr_accessor :name :greet
  def initialize
    @name = name
    @greet = greet
  end
end

animal = Animal.new
animal.name = "Pumba"

class Lion < Animal
  def initialize(name, greet, pack)
    super(name, greet)
    @pack = pack
  end
end

# Question 5
# An ERD is an entity relationshiop diagram. An ERD is a graphical representation fo entities and their relationships to each other, typically used in computing in regard to the organization of data within databases or information systems. (Thanks google)
# Example
# A person has a lamp that contains a genie. This genie can grants 1 wish. That person ask the genie for a pet.

# Question 6
# Ran out of time
