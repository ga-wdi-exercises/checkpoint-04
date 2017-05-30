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
- Remove "Belle" from `residents`
- Add "Belle" to the `guests` array

```rb
residents.delete("Belle")
guests.push("Belle")
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
friends.each do |friend|
  puts "Belle is friends with #{friend}"
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
# Your code goes here...
class Animal

  def initialize(name)
    @name = name
  end
  def greet
    puts "Hello! my name is #{@name}. I am an animal and definitely not a robot."
  end
  def get_name
    return @name
  end
  def set_name(name)
    @name = name
  end
end

class Lion < Animal
  @king = false
  pack = []
  if @name == "Simba"
    king = true
  end
  pack.push(Lion)
  def get_king
    return @king
  end
end

Pumba = Animal.new("Pumba")
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
An ERD is a way of mapping out the relationships between entities and how they can interact.  It's a good way to visualize what's going on between tables, objects, etc.
Genie would be many to one with person (one person could activate several genies), one to one with lamp (I think. I don't know the rules, maybe there's an apartment complex in there?), and I don't think they have pets. Attributes could include their master, their freedom status, how many wishes they have granted, age, in or out of lamp
Lamp - many to one with person, and no pets.  Lamp would hold a genie (or no genie), and user.
Person - one to many with Genie, lamp, and pets.  Attributes could include number of lamps/genies/pets, name, age, wishes. All sorts of stuff.
Pet - many to one with person.  No real relationships with genie and lamp. Attributes could include their owner, their age
```

### Question 6

Describe what a schema is and how we represent a one-to-many relationship in a
SQL database.

```
A schema is basically a collection of tables that have an owner.  one-to-many is represented visually by a line from the owner, to the schema, with many prongs coming off the end of the line toward schema, representing many things belonging to one owner
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
Person = Person.new(id, name, age)
```

### Question 8

Assuming the `Person` class from the previous question, write Ruby code that will query for any person that is 15 years of age...

```rb
persons.find_each do |person|
  person.age == 15
end
```

### Question 9

Write a route in Sinatra that will print "Hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

```rb
require 'sinatra'

get '/oh_hello' do
  return 'Hello world!'
end
```
