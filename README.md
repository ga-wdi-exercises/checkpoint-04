# Checkpoint 04

> If you have not completed the survey yet,
please do so by the end of the day!

## Instructions

1. Fork this repo
2. Clone your fork
3. Fill in your answers by writing in the appropriate area or, for multiple-choice questions, placing an 'x' in the square brackets.
4. Add/Commit/Push your changes to Github.
5. Open a pull request.

For questions 1-4, you must test your code before filling in an answer. You can do this by creating and running your own `app.rb` file or using an online REPL (e.g., [repl.it](https://repl.it/)).

> **Note**: Only place your answer between backticks. Don't modify the backticks,
or the language specifier after them.

## Ruby Basics & Enumerables

### Question 1

Define a method called `offer_rose`, which should take one argument named `person`.

When called the method should `puts` "Would you take this rose, `person`, in exchange for giving an old beggar woman shelter from the bitter cold?"

Demonstrate calling the method, passing in "young prince" as the argument.

Write your code here...

```ruby
def offer_rose(person)
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

offer_rose("young prince")
```

### Question 2

Assume the following hash...

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

Using Ruby...
- Remove Belle from the town residents
- Add her to the list of guests in the castle.

Write your code here...

```ruby
town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}

town[:residents].delete("Belle")
town[:castle][:residents] << " and Belle"
puts town[:residents]
puts town[:castle][:residents]
```

### Question 3

Assume you have an array of strings representing friend's names...

```ruby
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
```

Using `.each` and string interpolation, `puts` the following text...

```
Belle is friends with Chip Potts
Belle is friends with Cogsworth
Belle is friends with Lumière
Belle is friends with Mrs. Potts
```

Write your code here...

```ruby
friends.each {|friend| puts "Belle is friends with #{friend}"}
```

## Ruby OOP

### Question 4

Create ruby classes for `Animal` and `Lion`. Each `Animal` should have...
- A `name` attribute
- A `greet` instance method
- The ability to "get" and "set" `name`

Create a new `Animal` instance with the name "Pumba".

Make the `Lion` inherit from the `Animal` class. The `Lion` class should have a `pack` class variable that holds references to each instance created.

Each lion should have...
- A `king` attribute which is a boolean
- If the instance's `name` is "Simba" make the `king` attribute `true`

Create a new lion instance with the name "Simba".

```ruby
class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi, my name is #{name}!"
  end
end

class Lion < Animal
  attr_accessor :name, :king, :pack
  @@pack = []
  def initialize(name)
    super(name)
    @@pack << self
    if @name == "Simba"
      @king = true
    else
      @king = false
    end
  end

  def kingship
    puts "It is #{king} that I am king."
  end

  def self.pack
    @@pack
  end
end

pumba = Animal.new("Pumba")
simba = Lion.new("Simba")
nala = Lion.new("Nala")

puts Lion.pack
simba.kingship
nala.kingship
```

## SQL, Databases, and ActiveRecord

### Question 5

Describe what an ERD is, and why we create them for applications. Also give an
example what the attributes and relationships might be for the following
entities (no need to draw an ERD)...
- Genie
- Lamp
- Person
- Pet

Your answer...

```
ERD stands for Entity Relationship Diagram. It is used to demonstrate the storage of data an information that might be used by a program and to show the relationships between different collections stored in a database.

A Genie might have the following Attributes:
  - name
  - wishes remaining
  and would have a one-to-one relationship with a Lamp

A Lamp might have the following Attributes:
  - material
  - age
  - dirtiness
  and would have a one-to-one relationship with a Genie and a one-to-many relationship with a Person

A Person might have the following Attributes:
  - name
  - age
  - nationality
  and would have a one-to-many relationship with Lamps and a many-to-many relationship with Pets (pets can be owned by multiple members of the same family, for example)

A Pet might have the following Attributes:
  - name
  - species
  - age
  - fluffiness
  and would have a many-to-many relationship with multiple Persons
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
A Schema is a collection of database objects (in tables) associated with one Username. In this example, a Username would represent a single person and the objects contained within the Schema would be the wishes that have been made by that one Person.
```

### Question 7

Consider a class `Person` that inherits from `ActiveRecord::Base` and has the following schema...

```ruby
class Person < ActiveRecord::Base
end
```

```sql
CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  age INT NOT NULL
)
```

Write Ruby code that will create an instance of a person.

Your answer...

```ruby
Replace this with your answer
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
Replace this with your answer
```

### Question 8

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
Replace this with your answer
```
