require 'pry'
#
# def offer_rose(person)
#   puts "Would you like this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
#
# offer_rose("young prince")
#
# town = {
#   residents: ["Maurice", "Belle", "Gaston"],
#   castle: {
#     num_rooms: 47,
#     residents: "Robby Benson",
#     guests: []
#   }
# }
#
# town[:castle][:residents] = ["Robby Benson", "Belle"]
# town[:residents] = ["Maurice", "Gaston"]
#
# puts town
#
# friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
#
# friends.each { |e| puts "Belle is friends with #{e}"}
#

class Animal
  attr_accessor :name
  def initialize (name)
    @name = name
  end
  def greet
    puts "Roar my name is #{name}, be scared!"
  end
end

pumba = Animal.new("Pumba")

class Lion < Animal
  attr_accessor :name, :king, :pack
  @@pack = []
  def initialize (name)
    super (name)
    if name == "Simba"
      @king = true
    else
      @king = false
    end
    @@pack.push(self)
  end
  def get_pack
    return @@pack
  end
end

simba = Lion.new("Simba")

binding.pry
