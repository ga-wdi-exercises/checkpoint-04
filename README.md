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
# def offer_rose(person)
# 	puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
# end
#
# offer_rose('young prince')
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
# guest = town[:residents][1]
# town[:residents].delete_at(1)
# town[:guests].push(guest)
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
# friends.each do |place|
# 	puts "Belle is friends with #{place}"
# end
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
# class Animal
# 	def initialize(name)
# 		@name = name
# 	end
# 	
# 	def greet
# 		puts "Hello, I am #{@name}"
# 	end
# 	
# 	def get_name
# 		@name
# 	end
# 	
# 	def set_name(new_name)
# 		@name = new_name
# 	end
# 	
# end
#
# pumba = Animal.new("Pumba")
#
# class Lion < Animal
# 	@@pack = [name]
# 	def initialize(name)
# 		super(name)
# 		if name == 'Simba'
# 			@king = TRUE
# 		else
# 			@king = FALSE
# 		end
# 	end
# end
#
# simba = Lion.new("Simba")
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
An ERD is an Entity Relationship Diagram. The reason we create an ERD for
applications is to be able to better understand the relationships between
different classes and see how all the classes are linked and what attributes
would go into the classes. We are also able to determine from the get go whether
or not a class will have a one-to-one relationship with another class or a
one to many relationship. Given the example above:
The Person will be the center (main class) in this ERD. The person(attributes:
food, water, shelter, clothes, location, age, sleep, money, etc) has a
one-to-one relationship with the pet(attributes: owner, species, shelter,
location, etc). The pet shares no other relationship with any of the other
entities. The person also has a one-to-one relationship with the lamp
(attributes: type of lamp, age, location, contents). The lamp shares a
one-to-one relationship with the genie because only one genie lives in that lamp
The Genie (attributes: type of genie, location, number of wishes granted, rules)
will have a one-to-many relationship with the person because over time the Genie
has multiple masters.
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
The schema refers to the database table in SQL and how each entity within the
database is related to one another. A one to many relationship in a SQL schema
is shown such that the same user will be repeated multiple times for the
corresponding relationship. For example with people and wishes:
In an SQL table, if person 1 = Kevin and person 2 = Jamal and we both have 3
wishes. It would be represented by:
Kevin: wish 1
Kevin: wish 2
Kevin: wish 3
Jamal: wish 1
Jamal: wish 2
Jamal: wish 3
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
# person = Person.new(name: "Kevin", age: "23")
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
# Person.find_by(age: 15)
```

### Question 8

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
# require 'sinatra'
# require 'sinatra/reloader'
# get '/oh_hello' do
#   return "Hello World!!"
# end
```
