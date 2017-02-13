# Question 1
def offer_rose(person)
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

offer_rose('young prince')

# Question 2
town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}
town[:residents].delete("Belle")
town[:castle][:guests] << "Belle"

# Question 3
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
friends.each do |person|
  puts "Belle is friends with #{person}"
end

# Question 4
class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def greet
    "Hello, my name is #{name}."
  end
end

pumba = Animal.new('Pumba')

class Lion < Animal
  attr_accessor :pack, :king
  def initialize(name, pack)
    @name = name
    @pack = pack
  end
  def isKing
    if @name == 'Simba'
      @king = true
    else
      @king = false
    end
  end
end

simba = Lion.new('Simba','WDI-14')
