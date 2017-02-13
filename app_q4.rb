              #################################################
              # 201702130951L   EL LUNES   JAY
              #################################################

              #################################################
                      # NOW ONTO THE checkpoint-04, q3
              # https://github.com/ga-wdi-exercises/checkpoint-04

              # Ruby OOP
              # Question 4
              # Create ruby classes for Animal and Lion. Each Animal should have...
                  # A name attribute
                  # A greet instance method
                  # The ability to "get" and "set" name
              # Create a new Animal instance with the name "Pumba".
              # Make the Lion inherit from the Animal class. The Lion class should have a pack class variable that holds references to each instance created.
              # Each lion should have...
                  # A king attribute which is a boolean
                  # If the instance's name is "Simba" make the king attribute true
                  # Create a new lion instance with the name "Simba".


                  class Animal
                    attr_accessor :name
                    @@all = []

                    def initialize(name)
                      @name = name
                      puts "Creating #{self.name}"   # here, `self` refers to the current instance
                      @@all.push(self)
                    end

                    # Can also be written as `def User.all`
                    # here, `self` refers to the class
                    def self.all
                      return @@all
                    end
                  end

Animal.new("Pumba")



              class Lion extends Animal
                attr_accessor :name
                @@all = []
                king = false

                def initialize(name)
                  @@pack
                  @name = name
                  puts "Creating #{self.name}"   # here, `self` refers to the current instance
                  @@all.push(self)
                end

                def check_king
                  puts "Are you a king?"
                  if #{:name} == "Simba"
                    king = true
                  end
                  # return "#{@name.capitalize}"
                end
                # Can also be written as `def User.all`
                # here, `self` refers to the class
                def self.all
                  return @@all
                end
              end

Lion.new("Simba")
