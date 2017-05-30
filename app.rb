# def offer_rose(person)
#   puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
#
# offer_rose "young prince"

#
# town = {
#   residents: ["Maurice", "Belle", "Gaston"],
#   castle: {
#     num_rooms: 47,
#     residents: "Robby Benson",
#     guests: []
#   }
# }
# # Using Ruby...
# # - Remove "Belle" from `residents`
# # - Add "Belle" to the `guests` array
#
# town[:residents].delete("Belle")
# town[:guests].push("Belle")
#
# friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
#
# friends.each do |name|
#   puts "Belle is friends with #{name}."
# end

class Animal

  def set_name(name)
    @name = name
  end
  def get_name(name)
    puts @name
  end
  def greet
    puts "Hi my name is #{@name}."
  end

end

pumba = Animal.new
pumba.set_name("Pumba")


class Lion < Animal


end
