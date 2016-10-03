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



binding.pry
puts "done"
