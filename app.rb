require "pry"

def offer_rose (person)
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"

end


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
# town[:guest].push("Belle")

class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def greet
    puts "Hello my name is #{name}"
  end

end


class Lion
  def initialize(name, pack)
    super(name)
    @pack = pack
  end


end

pumba = Animal.new("Pumba")
simba = Lion.new("Simba")






binding.pry
