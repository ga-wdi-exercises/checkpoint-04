              # require_relative "data"
              # require_relative "models/apartment"
              #################################################
              # 201702130910L   EL LUNES   JAY
              #################################################
              #
              # https://github.com/ga-wdi-lessons/ruby-oop
                # class User
                #   attr_accessor :firstname, :lastname
                #   @@all = []
                #
                #   def initialize(firstname, lastname)
                #     @firstname = firstname
                #     @lastname = lastname
                #     # here, `self` refers to the current instance
                #     puts "Creating #{self.firstname}"
                #     @@all.push(self)
                #   end
                #
                #   def full_name
                #     return "#{@firstname.capitalize} #{@lastname.capitalize}"
                #   end
                #
                #   # Can also be written as `def User.all`
                #   # here, `self` refers to the class
                #   def self.all
                #     return @@all
                #   end
                #
                # end
                  # draco = User.new("Draco", "Malfoy") # "Creating Draco"
                  # luna = User.new("Luna", "Lovegood") # "Creating Luna"
                  # bellatrix = User.new("Bellatrix", "LeStrange") # "Creating Bellatrix"
                  # User.all
                  # # => [#<User @firstname="Draco">, #<User @firstname="Luna">, #<User @firstname="Bellatrix">]
                  #
                  # AND/OR
              # https://github.com/ga-wdi-lessons/ruby-oop
              # require "pry" class User def set_name_to(some_string) @name = some_string end def get_name return @name end def greet puts "Hi! My name is #{@name}!" end end binding.pry puts "end of file" # # alice = User.new # alice.greet # # madhatter = User.new # madhatter.greet # # User.new # # puts alice # puts madhatter # selection = nil


              #################################################
                      # NOW ONTO THE checkpoint-04
              # https://github.com/ga-wdi-exercises/checkpoint-04
                  # Ruby Basics & Enumerables
                  # Question 1
                  # Define a method called offer_rose, which should take one argument named person.
                  # When called the method should puts "Would you take this rose, person, in exchange for giving an old beggar woman shelter from the bitter cold?"
                  # Demonstrate calling the method, passing in "young prince" as the argument.
class Offer
  attr_accessor :person
  @@all = []

  def initialize(person)
    @person = person
    puts "Creating #{self.person}"   # here, `self` refers to the current instance
    @@all.push(self)
  end

  def offer_rose
    puts "Would you take this rose, person, in exchange for giving an old beggar woman shelter from the bitter cold?"
    return "#{@person.capitalize}"
  end

  # Can also be written as `def User.all`
  # here, `self` refers to the class
  def self.all
    return @@all
  end
end


x = Offer.offer_rose("young prince, Beauregard")
