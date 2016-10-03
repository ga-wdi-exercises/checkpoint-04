require 'pry'

town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}


class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def greet
    puts "Hello, I'm #{name}"
  end

end

class Lion < Animal
  attr_accessor :name
  @@pack = []
  def initialize(name, king)
    @name = name
    @king = king
    @@pack << self
  end
  def self.pack
  @@pack
  end
end


pumba = Animal.new("Pumba")
simba = Lion.new("Simba", true)
binding.pry
