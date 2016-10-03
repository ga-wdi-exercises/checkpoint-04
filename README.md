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
def offer_rose person
	puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

offer_rose "young prince"
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
town[:residents].delete 'Belle'
town[:castle][:guests].push 'Belle'
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
friends.each do |friend|
	puts "Belle is friends with #{friend}"
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
class Animal
	attr_accessor :name

	def initialize name
		@name = name
	end

	def greet
		puts "Rawr, my name is #{name}."
	end
end

pumba = Animal.new "Pumba"

class Lion < Animal
	attr_accessor :king
	@@pack = []

	def initialize name
		super name
		@@pack << self
		puts @@pack
		@name == "Simba" ? @king = true : @king = false
	end

	def self.pack
		@@pack
	end
end

simba = Lion.new "Simba"
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
An ERD is an Entity Relationship Diagram and it is used to visualize the interconnectedness between tables in a database. This helps us in many ways, some of which are being able to organize our thoughts for building a database or reviewing the structure of a database before making edits.

A genie would have a one-to-one relationship with a lamp. A lamp might have a one-to-many relationship with a person (e.g. one person might find many lamps). A pet would have a one-to-many relationship with a person as well since a pet would need a single registered owner. A pet would not have a relationship with a lamp or a genie -- unless it's a particularly awesome pet (see: Abu). A person could have a one-to-one relationship with a genie, but that relationship is potentially already accounted for via the person/lamp and genie/lamp connections.
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use: people and wishes
(one-to-many).

Your answer:
```
A schema is a tool in object-oriented programming used to categorize or templatize objects in a database. We define schemas with a name and structure after which its objects are modeled.

A one-to-many relationship is represented line between two objects with a broom/crows-feet on the "many" end. A person can make many wishes and a wish belongs to only one person, so visualizing the relationship between the two would have the broom/crows-feet next to 'wishes' and a line extending to 'people'.
```
