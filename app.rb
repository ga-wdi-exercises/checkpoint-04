require "pry"

# def offer_rose(person)
# puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
#
# offer_rose("young prince")


town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}

belle = town[:residents].slice!(1)
town[:castle][:guests].push(belle)


binding.pry
