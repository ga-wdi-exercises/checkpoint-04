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
town.guests << town.residents.slice!(1)
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
friends.each { |friend| puts "Belle is friends with #{friend}"}
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
    puts "Hi, my name is #{name}."
  end
end

class Lion < Animal
  @@pack = []
  def initialize name
    @name = name
    @king = name == "Simba" ? true : false
    @@pack << self
  end
end

simba = Lion.new("Simba")
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
An 'entity relationship diagram' is a document used to plan how data will be stored in an application. They are used to understand and track what information is needed/used in different contexts and how information ought to be grouped. They are most commonly a visual representation of tables in boxes with columns listed as attributes and lines drawn between to indicate relationships between tables. The lines will end with symbols that indicate the nature of the relationship.

class Person
has_many: pets
has_many: lamps

class Pet
belongs_to: person

class Lamp
belongs_to: person
has_one: genie

class Genie
has_one: lamp
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use: people and wishes
(one-to-many).

Your answer:
```
A schema is a collection of tables in a database. Typically relationships between tables are represented by a foreign key. In a one to many relationship the foreign key would be a column in the 'many' table. In the wishes example there would be a column in the wishes table (probably called person_id) that points to the id column in the person table. This structuring allows for their to be a many to one relationship. That said, this alone does not mean that there is definitely a one to many relationship. You should probably rely on an ERD for that.
```
