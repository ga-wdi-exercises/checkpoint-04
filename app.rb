require 'pry'

#question 1
def offer_rose(person)
  attr_writer :person
  @person = person
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end


#question 2

town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}

#remove belle from town's people
town[:residents].pop[1]

# add belle to castle
town[:guests] = "Belle"


#question 3

friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

friends.each do |friends|
  puts "Belle is friends with #{friends}"
end


#question 4

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello I am a #{name}"
  end

  def pumba
    puts @@pumba
  end
end

class Lion < Animal
  attr_accessor :name, :pack, :king

  def initialize(name, pack, king)
    @name = name
    @pack = pack
    @king = king
  end

  def new_pack
    @@new_pack
  end

  def king
    if @king
      true
    end

  def greet
    puts "Hello I am a #{name}"
  end
  end

simba = Lion.new("Simba","king")

binding.pry


Puts "End of File"
