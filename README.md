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

    puts "Would you take this rose, #{person} in exchange for giving an old beggar woman shelter from the bitter cold?"
end


person = "young prince"

offer_rose(person)
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
#to remove belle
town[:castle][:guests] << town[:residents].delete("Belle")
#to keep belle in the previous array
town[:castle][:guests] << town[:residents][1]
p town[:residents]
puts town[:castle]
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
friends.each do  |friend|
  puts "Belle is friends with #{friend}"
end
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

def initialize name
@name = name
end

def greeter(name)
puts "Rorrr.... I am #{@name}, I am the king of the pride "
end

end

p pumba = Animal.new("pumba")



class Lion < Animal
  #sorry for not following instructions a group of lions is called a Pride, not a pack
@@pride = []

def initialize name
@king = false
@name = name
if name == "simba"
@king = true
 @@pride << name
p greeter(name)
else
  @king = false
 p @@pride << name
end

end

def Lion.pride
return @@pride
end

end

p simba = Lion.new("simba")
p pumba = Lion.new("pumba")
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
ERD - Entity relationship diagram is a diagram which shows the relationship between an entity and a set of data inputs in a table
ERD- shows the relationships of entity sets stored in a database
We create an ERD for an application is in order to understand the relationship between each data sets in an application.
-In order to understand better what a user might be seeing and interacting within the application
Genie(power, magic) =>(lamp(light, touch)) => Person(name, id) => pet(name, wish id)
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
Schema - is the organization or structure for a database.
people(
  id - SERIAL PRIMARY KEY,
  name - VARCHAR not NULL,
  gender - VARCHAR NULL
  )

wishes(  
  id - int not NULL,
  people id - INT not NULL,
  type - VARCHAR  NULL
  )


People could have many wishes.
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
jonathan = Person.new(name: "Jonathan", age: 35)
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
person.where(age: 15)
```

### Question 8

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
get `oh_hello` do
  puts "hello world"
end
```
