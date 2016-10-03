

town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}
town[:residents].each_with_index do |name, index|

  town[:residents].delete_at(1)
puts town[:residents]

end

require 'pry'
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
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

friends.each do |name|
  puts "Belle is friends with #{name}"
end



binding.pry
