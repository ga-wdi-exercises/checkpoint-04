require "pry"

def offer_rose person
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

offer_rose "Young Prince"

#2__________________________________________

$town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}

# def move_guest
#   $town[:residents].each do |resident|
#   if resident == "Belle"
# end
# end


#3___________________________________________

friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

friends.each do |friend|
  puts "Belle is friends with #{friend}"
end

#4__________

class Animal
  attr_accessor :name
  def initialize name
    @name = name
  end

  def greet
    puts "Hi my name is #{@name}"
  end
end

timon = Animal.new("Pumba")


class Lion < Animal
  attr_accessor :pack
  @@pack =[]

  def initialize name, king
    @name = name
    @king = king
    @@pack << name
  end

end

Simba = Lion.new("Simba",true)

#5____________

# An ERD is an entity relationship diagram. It is a diagram used to visualize the data relating to the entitites that exist in our programs
#
# A genie would have attriubutes such as name and color. Among their own separate attributes a person and lamp would
# have a genie ID attribute to indicate the genie that they are assigned to. Finally, the pet entitiy would have its own
# collection of attributes, one of them being personID, indicating the person it belongs to.

#6_____________________

# A schema defines the columns of a table in a database. In the genie example, a person entity would have a one to many
# relationship with the wishes entity. We would draw this with the "hand lines" in our ERD diagram. The schema for a wish would
# likely include, wish name, person ID, wish text, etc.


binding.pry
