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

binding.pry


Puts "End of File"
