# def offer_rose(person)
# 	puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"

# end

# offer_rose('young prince')



# town = {
#   residents: ["Maurice", "Belle", "Gaston"],
#   castle: {
#     num_rooms: 47,
#     residents: "Robby Benson",
#     guests: []
#   }
# }



#  p town[:residents].delete("Belle")
#  p town
#  p town[:guests] << "Belle"

# friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

# friends.each{|x| p "Belle is friends with #{x}"}

class Animal
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def greet
		puts " Hi I am a #{@name}"
	end
end

class Lion < Animal
	attr_accessor :name, :pack, :king
	def initialize(name)
		super(name)
		@king = false
		@@pack = []
	end
	def is_king
		if @name == "Simba" 
			@king = true
		end
	end
end


pumba = Animal.new("Pumba")
p pumba.greet

simba = Lion.new("Simba")
p simba
simba.is_king
p simba



