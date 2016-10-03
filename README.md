# Checkpoint 04

> If you have not completed the survey yet,
please do so by the end of the day!

## Instructions

1. Fork this repo
2. Clone your fork
3. Fill in your answers by writing in the appropriate area, or placing an 'x' in
the square brackets (for multiple-choice questions).
4. Add/Commit/Push your changes to Github.
5. Open a pull request.

> **Note**: Only place your answer between backticks. Don't modify the backticks,
or the language specifier after them.

## Ruby Basics & Enumerables (meets Beauty and the Beast)

### Question 1

Define a method called `offer_rose`, which should take one argument named `person`.

When called the method should `puts` "Would you take this rose, `person`, in exchange for giving an old beggar woman shelter from the bitter cold?"

Demonstrate calling the method, passing in "young prince" as the argument.

Write your code here:
```ruby
def offer_rose(person)
  puts "Would you take this rose #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end
something.offer_rose("young prince")

```

### Question 2

Assume the following hash:

```ruby
town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}
```

Using Ruby, remove Belle from the town residents, and
add her to the list of guests in the castle.

Write your code here:
```ruby


  town[:residents].delete_at(1)
puts town[:residents]


```

### Question 3

Assume you have an array of strings representing friend's names:

```ruby
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
```

Using `.each` AND string interpolation, produce output (using `puts`) like so:

```
Belle is friends with Chip Potts
Belle is friends with Cogsworth
Belle is friends with Lumière
Belle is friends with Mrs. Potts
```

Write your code here:
```ruby
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
friends.each do |name|
  puts "Belle is friends with #{name}"
end
```
## Ruby OOP (meets Lion King)

### Question 4

Create ruby classes for `Animal` and `Lion`.
Each `Animal` should have:

- a `name` attribute
- a `greet` instance method
- Getter and setter for `name`

Create a new `Animal` instance with the name "Pumba"

Make the `Lion` inherit from the `Animal` class.
The `Lion` class should have a `pack` class variable that holds references to each instance created.

Each lion should have:
- a `king` attribute which is a boolean
  - If the instance's `name` is `Simba` make the `king` attribute true

Create a new lion instance with the name `simba`

```ruby
require 'pry'
class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def greet
    puts "Hello, I'm #{name}"
  end

end

class Lion < Animal
  attr_accessor :name
  @@pack = []
  def initialize(name, king)
    @name = name
    @king = king
    @@pack << self
  end
  def self.pack
  @@pack
  end
end


pumba = Animal.new("Pumba")
simba = Lion.new("Simba", true)
binding.pry
```

## SQL, Databases, and ActiveRecord (meets Aladdin)

### Question 5

Describe what an ERD is, and why we create them for applications. Also give an
example what the attributes and relationships might be for the following
entities (no need to draw an ERD):
* Genie
* Lamp
* Person
* Pet

Your answer:
```
An ERD is short for Entity Relationship Diagram. Basically, its a tool that developers use to conceptualize or "draw out" the relationship between entities or models in our program. Attributes for these entities would be "Name, ID, Size(lamp), Age." A relationship exampe would be a "One to Many" relationship from a Person and a Pet. A person may have multiple pets, while the pet would have one owner.
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use: people and wishes
(one-to-many).

Your answer:
```
A schema is used to create the tables and define the structure of the Model. An example of a One to Many relationship includes an Artist Model that has many Songs. The Song Model "belongs_to: artist." With a foreign key, that links the two together, each Artist is represented by an ArtistID. That ArtistID is given to the songs written by the Artist.
```
