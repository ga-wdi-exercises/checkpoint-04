require 'sinatra'
require 'sinatra/reloader'

# Question 1

def offer_rose (a1="Young Prince")
  puts "Would you take this rose, #{a1}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end


# def offer_rose
#   puts "Would you take this rose, " + offer_rose + ", in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
#
# offer_rose ("young prince")

# Question 2
town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}
town.residents.delete_at(2)
town.castle.guests << 'Belle'
town[:castle]

#Question 3
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]

friends.each do |i|
puts "Belle is friends with #{i}"
end

# Question 4
class Animal (name)
  attr_accessor :name
  def initialize
    @name = name
  end
  def greet
  end
end

animal = Animal.new
animal.name = "Pumba"

class Lion < Animal
  @@pack = []
  king == false
  def initialize(name)
    super(name)
    @@pack << self
  end
  def check_king
    puts "What is your name?"
    if name == "Simba" == true
    else == false
    end
end

lion1 = Lion.new("Joe")


class Person < ActiveRecord::Base
end
person1=Person.new(1, "John Smith", 15)

people =[]
result = people.select do |age|
  age == 15
end

get '/oh_hello' do
  return "hello world"
end

# Question 5
# An ERD is an entity relationshiop diagram. An ERD is a graphical representation fo entities and their relationships to each other, typically used in computing in regard to the organization of data within databases or information systems. (Thanks google)
# Example
# A person has a lamp that contains a genie. This genie can grants 1 wish. That person ask the genie for a pet.

# Question 6
# A schema is a blueprint. A database schema is the collection fo relation schemas for a whole database. An example would be the "parent" or wishes.
