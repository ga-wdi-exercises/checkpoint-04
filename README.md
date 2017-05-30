# Checkpoint 04

## Instructions

1. Fork this repo
2. Clone your fork
3. Fill in your answers by writing in the appropriate area or, for multiple-choice questions, placing an 'x' in the square brackets
4. Add/Commit/Push your changes to Github
5. Open a pull request

For questions 1-4, you must test your code before filling in an answer. You can do this by creating and running your own `app.rb` file.

> Only place your answer between the backticks provided for you throughout the checkpoint.

## Ruby Basics & Enumerables

### Question 1

Define a method called `offer_rose`, which should take one argument named `person` (String).

When called the method should print "Would you take this rose, `person`, in exchange for giving an old beggar woman shelter from the bitter cold?" to the Terminal.

Demonstrate calling the method, passing in "young prince" as the argument.

```rb
def offer_rose person
	puts "Would you take this rose, #{person}. in exchange for giving an old beggar woman shelter from the bitter cold?"
end
offer_rose "young Prince"
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
- Remove "Belle" from `residents`
- Add "Belle" to the `guests` array

```rb
belle = town[:residents][1]
town[:residents].delete("Belle")
town[:guests] = [belle]

```

### Question 3

Assume you have an array of strings representing friends' names...

```rb
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
```

Using `.each` and string interpolation, print the following text to the Terminal...

```
Belle is friends with Chip Potts
Belle is friends with Cogsworth
Belle is friends with Lumière
Belle is friends with Mrs. Potts
```

```rb
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
friends.each do |person|
	puts "Belle is friends with #{person}"
end
```

## Ruby OOP

### Question 4

Create Ruby classes for `Animal` and `Lion`. Each `Animal` should have...
- A `name` (String) attribute
- A `greet` instance method
- The ability to "get" and "set" `name`

Create a new `Animal` instance with the name "Pumba".

Make the `Lion` inherit from the `Animal` class. The `Lion` class should have a `pack` class variable that holds references to each instance created.

Each lion should have...
- A `king` (Boolean) attribute
- If the instance's `name` is "Simba", set the `king` attribute to `true`

Create a new lion instance with the name "Simba".

```rb
class Animal
	attr_accessor :animal_name
	def initialize(animal_name)
		@animal_name = animal_name
	end
	def greet
		puts "Hi my name is #{animal_name}"
	end
end
pumba = Animal.new("Pumba")
class Lion < Animal
	@@pack = []
	def initialize(animal_name)
		@animal_name = animal_name
		@king = make_king(@animal_name)
		@@pack.push(self)
	end
	def make_king names
		if names == "Simba"
			@king = true
		else
			@king = false
		end
	end
end
 simba = Lion.new("Simba")
```

## SQL, Databases, and ActiveRecord

### Question 5

Describe what an ERD is and why we create them for applications. Also give an
example what the attributes and relationships might be for the following
entities (no need to draw an ERD)...
- Genie
- Lamp
- Person
- Pet

```
entity relationship diagram aka ERD. Is a method of showing relationships between data stored in databases. It is a visual tool used to understand how data will interact and how it is related to each other. A Person may have many pets and or Lamps(one-to-many). A Lamp will only have one Genie and a Genie one Lamp(one-to-one). A Person/Genie/Pet may share attributes such as name,age,gender but person could also have occupation and Lamp possesion.Lamp could have a metal attribute and a has_genie attribute.
```

### Question 6

Describe what a schema is and how we represent a one-to-many relationship in a
SQL database.

```
schema is the template for the data in the table. a one-to-many relationship can be shown by a foreign_key that is based on the primary key of its sole owner.
```

### Question 7

Consider a class `Person` that inherits from `ActiveRecord::Base` and has the following schema...

```rb
class Person < ActiveRecord::Base
end
```

```sql
CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  age INT NOT NULL
);
```

Write Ruby code that will create an instance of a person...

```rb
me = Person.create(name: "Tim",age: 27)
```

### Question 8

Assuming the `Person` class from the previous question, write Ruby code that will query for any person that is 15 years of age...

```rb
is_15 = Person.where("age = 15")
```

### Question 9

Write a route in Sinatra that will print "Hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

```rb
get '/oh_hello' do
	puts "Hello World"
end
```
