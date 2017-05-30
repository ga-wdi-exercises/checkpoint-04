require 'pry'


# def offer_rose (person)
#   puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
#
# offer_rose("young prince")


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
# puts town[:residents]
#
# town[:castle][:guests].push("Belle")
# puts town[:castle][:guests]


# friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
#
# friends.each do |friend|
#   puts "Belle is friends with #{friend}"
# end

class Animal
  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def greet
    puts "Hi my name is #{@name}"
  end
end

class Lion < Animal
    # def initialize (pack, king)
    #   @@pack = pack
    #   @king = king
    # end

    @king = false
  def king
    # if @name == "simba"
    #   @king = true
    # else
    #   @king = false
    # end
    puts "I'm king"
  end

end

# pumba = Animal.new("Pumba")






binding.pry
