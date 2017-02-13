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
  @person = person
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
residents. delete(2)
guests << "Belle"
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
friends.each do |i|
  puts "Belle is friends with " + i
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
class animal
  attr_accessor :name, :greet

  def initialize (name, greet)
    @name = name
    @greet = greet
  end
end



class lion < animal
  attr_accessor :pack, :king

  def initialize(name, greet, pack, king)
    super(name, greet)
    @pack = pack
    @king = king
  end
end

Pumba = animal.new("Pumba", "Hi my name is pumba")
Simba = lion.new("Simba", "Hi my name is Simba", true)



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
An ERD is Entity Relaionship Diagram, and its meant to draw out the various ways data relates to entities on yoru site.  It should help you plan out your website.  In the examples above, each entity can have many connections to the other. For example, the Genie and Lamp can have a one to one relationship, while the lamp also has a one-to-one relationship with the person.  The pet can have a many-to-many relationship to the person, while it has no relationships with the lamp or Genie.  The person and Genie can have a many to many relationship with each other.  Some attributes the genie would have is age, number of wishes granted, and number of wishes total.  The lamp can have material it's made out of.  The person can have aname, age, gender, height, number of wishes granted, number of wishes left.  The pet could have species, gender, height, and weight.
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
Schema defines what columns it has.  If we were to represnt a one-to-many relationship, then the person would have 3 wishes.  We would have one table for the person, and another table for wishes.  The wishes table would tie to the person table with specific ID numbers since the person would be making more then one wish (3).
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
get '/oh_hello' do
  return "Hello world"
end
```
