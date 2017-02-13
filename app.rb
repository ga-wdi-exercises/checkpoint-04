# def offer_rose person
#   puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
# offer_rose "young prince"


# town = {
#   residents: ["Maurice", "Belle", "Gaston"],
#   castle: {
#     num_rooms: 47,
#     residents: "Robby Benson",
#     guests: []
#   }
# }
#
# town[:residents].delete("Belle")
# town[:castle][:guests].push("Belle")
# puts town[:residents]
# puts town[:castle][:guests]

# friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
# friends.each do |friend|
#   puts "Belle is friends with #{friend}"
# end

require "pry"

class Animal
  attr_accessor :name

  def initialize name
    @name = name
  end

  def greet
    "Hello, I'm #{@name}"
  end
end

pumba = Animal.new("Pumba")

class Lion < Animal
  attr_accessor :pack, :name

  @@pack = 0

  def initialize name, king
    super(name)
    @@pack += 1
    @king = king
  end

  def pack_size
    @@pack
  end
end

simba = Lion.new("Simba", true)

binding.pry
