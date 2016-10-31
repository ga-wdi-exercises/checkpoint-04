require "pry"
def offer_rose person
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

# offer_rose "young prince"

town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}

friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

class Animal
  attr_accessor :name

  def initialize name
    @name = name
  end

  def greeter
    puts "Hi my nmae is #{@name}"
  end

end

class Lion < Animal
  @@pack = []

  def initialize name
    @king = false
    @name = name
    if @name == "simba"
      @king = true
    end
    @@pack << self
  end

  def Lion.pack
    return @@pack
  end

end

binding.pry
puts "pry bug"
