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
town[:castle][:guests].push(town[:residents][1])
town[:residents][1].delete("Belle")
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
	def initialize( initial_name, initial_greet)
		@name = initial_name
		@greet = initial_greet
	end
end

pumba = Animal.new('Pumba', 'Hello!!')

class Lion < Animal
  attr_accessor :name, :greet
  @@pack = []
	def initialize( initial_name, initial_greet)
    super(initial_name, initial_greet)
    @king = true if @name == "Simba"
    @king = false if @name != "Simba"

		@name = initial_name
		@greet = initial_greet
    @@pack << self
	end
end

simba = Lion.new('Simba', 'Rawr!')
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
ERD stands for "Entity Relationship Diagram". It is uses to model the relationships of objects to one another.

Genie:
  id: 234
  wishes_remain: 3,
  home_id: 34

Lamp:
  id: 34,
  origin: desert,
  has_been_rubbed: true


Person:
  id: 4934,
  address: "432 Jabroni Drive",
  pet_id: 5894,

Pet:
  id: 5894
  type: "dog",
  vaccinated: true

```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
A schema is a what defines what each column in a table represents.  To take it further, if a row represents an object, then a column is each objects properties and the table is a collection of objects and their properties.

In the people to wishes relationship model, a single person can have 3 wishes.  The wishes table is an extension of a person. This relationship does not work in the inverse though.
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
person = Person.new(name: 'Stone Cold Steve Austin', age: 45)
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
Person.where("age == 15")
```

### Question 8

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
get '/oh_hello'
  return "<h2>hello world</h2>"
end
```
