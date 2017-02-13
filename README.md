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
``Would you take this rose, young prince, in exchange for giving an old beggar woman shelter from the bitter cold?
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
belle = town[:residents].delete("Belle")
town[:castle][:guests].push("Belle")
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
friends.each {|x| puts "Belle is friends with #{x}"}
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
    puts "Hello #{@name}!"
  end
end

class Lion < Animal
  attr_accessor :name, :king, :pack
  @@pack = 0

  def initialize(name)
    super(name)
    @@pack +=1
    @king = false
    if @name == "Simba"
      @king = true
    end
  end

  def self.pack
    @@pack
  end
end

simba = Lion.new("Simba")
=> #<Lion:0x007f35c051e580 @name="Simba", @king=true>
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
ERDs (entity relationship diagrams) show the relationship between data entities and attribites.
They are useful for applicaitons because they show how the components of the data set are related to each other. For the examples:


```
--Each genie might have one lamp, so the lamp could be an attribute of the genie, with a one-to-one relatiosnhip.
--A genie might have multiple people, but each person probably has only one genie (a one-to-many relationship).
--Each person could have multiple pets, but each pet probably has only one owner (one-to-many)
--A genie would have the attributes name and freedom
--A person would have the attributes name and wishes
--A pet would have the attributes name and species
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
A schema defines the columns that will be used in a table. A one-to-many relationship
is represented by linking one row in one table to multiple rows in another table through a foreign key.
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
person1 = Person.create(id: 1, name: "Joe", age: 23)
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
Person.where(age < 15)
```

### Question 8

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
get '/oh_hello' do
  return "Hello world!""
end
```
