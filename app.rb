require "pry"

def offer_rose person
    puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

offer_rose 'Young prince'

town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}

town[:residents].delete('Belle')
town[:castle][:guests].push("Belle")

friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
friends.each do |name|
    puts "Belle is friends with #{name}"
end

class Animal
    attr_accessor :name
    def initialize animal_name
        @name = animal_name;
    end

    def greet
        puts "What's up. #{@name.capitalize} in the house."
    end
end

pumba = Animal.new('Pumba')

class Lion < Animal
    @@pack = []
    def initialize lion_name
        @name = lion_name
        if lion_name.downcase == "simba"
            @king = true
        else
            @king = false
        end
        @@pack.push(@name)
        super
    end

    def self.display_pack
        puts @@pack
    end
end

scar = Lion.new('Scar')

binding.pry