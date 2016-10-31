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
class BeautyBeast
  attr_accessor :person
def offer_rose person
  puts "Would you take this rose,#{{person}}, in exchange for giving an old beggar woman shleter from ibtter cold?"
end

prince = BeautyBeast.new("young prince")
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
town[:residents].delete("Belle")
town[:guests] << "Belle"

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
class Animal
	attr_accessor :name
def initialize name
	@name = name
end
def greet
	puts "Hi my name is #{name}."
end

end


class Lion < Animal
	def name
		if  #{name} == "Simba"
		puts "true"
	end
end
end

disney = Animal.new("Pumba")
disney_one = Lion.new("Simba")
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
ERD is Entity Relationship Diagram and we use them to visualize the relationships between the entities in our programs. The types of relationships include one to one, one to many, and many to many.

1. A Genie will have attributes of name, location
2. Lamp will have attributes of name, owner, status
3. A Person will have attributes of name
4. Pet will have attributes of owner, name

Genie has one to one relationship with Lamp and Person.
Pet has one to one relationship with Person
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use: people and wishes
(one-to-many).

Your answer:
```
A schema defines each column of a table.
```

### Question 7

Given an active record class `Person`. That inherits from `ActiveRecord::Base` and the following schema :
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

Write ruby code that will create a person.

Your answer:
```
Replace this with your answer
```

Write ruby code that will query for any person that is 15 years of age

Your answer:
```
Replace this with your answer
```

### Sinatra

Write a route in sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer:
```
Replace this with your answer
```
