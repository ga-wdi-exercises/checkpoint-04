require 'pry'


class Animal
  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def greet
    puts "Hello, my name is #{@name}"
  end

end

class Lion < Animal
  @@pack = []

  def king
    if @name == "Simba"
      @king = true
    end
  end

  def self.pack
    @@pack
  end

end


pumba = Animal.new("Pumba")
simba = Lion.new("Simba")

binding.pry
puts 'done'
