require 'pry'

class Animal
  attr_accessor :name
  def initialize name
    @name = name
  end
  def greet
    puts "Hi my name is #{@name.to_s}"
  end
end

class Lion < Animal
  attr_accessor :king
  @@pack = []
  def intialize name
    super (name)
    @@pack.push(self)
    if @name == 'simba'
      @king = true
    else
      @king = false
    end
  end
  def self.list
    puts @@pack
  end
  def king
    puts @king
  end
end

binding.pry
puts 'Rest of program here'
