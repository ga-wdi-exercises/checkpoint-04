require 'pry'

class Animal
  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def greet
    puts "Buenos Dias"
  end

end

pumba =  Animal.new("Pumba")

class Lion < Animal
  attr_accessor :king
  @@pack = 0
  @@pack += 1


  def is_king
    if name == "Simba"
      @king = true
    else
      @king = false
    end
  end

  def self.pack
    @@pack
  end
end

simba = Lion.new("Simba")
nala = Lion.new("Nala")



binding.pry
puts "done"
