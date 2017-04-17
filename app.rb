require "pry"
	def offer_rose(person)
		puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
	end



	town = {
		residents: ["Maurice", "Belle", "Gaston"],
		castle: {
			num_rooms: 47,
			residents: "Robby Benson",
			guests: []
		}
	}

	friends = ["Chip Potts", "Cogsworth", "Lumiere", "Mrs. Potts"]

	# friends.each do |friend|
	# 	puts "Belle is friends with #{friend}"
	# end

	class Animal
		# I blanked on the name for attr_accessor so I looked that up
		attr_accessor :name

		def initialize(name)
			@name = name
		end

		def greet
			puts "Good morning #{name}!"
		end
	end

	pumba = Animal.new("Pumba")

	class Lion < Animal
		@@pack = []

		def initialize(name)
			super(name)
			@king = false
			@@pack << @name
		end

		def king_status
			if @name == "Simba"
				@king = true
			end
		end

		def Lion.show_pack
			puts @@pack
		end
	end

binding.pry