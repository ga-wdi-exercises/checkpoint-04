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

offer_rose("Young Prince")
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
town[:residents].delete("Belle")

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
friends.each do |friend|
  puts "Belle is friends with #{friend}."
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
#make Animal class
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  def greet
    "Hello! My name is #{@name}."
  end
end
#create class Lion

class Lion < Animal
  attr_accessor :name, :king
  @@pack = []
  def initialize(name)
    super(name)
    @king = false
    @@pack.push(self)
    if
      name == "Simba" then @king === true
    end    
  end
  def check_pack
    puts @@pack
  end
end

#create new animal instance Pumba, Simba
pumba = Animal.new("Pumba")
simba = Animal.new("Simba")

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
An ERD is an Entity Relationship Diagram. This diagram lists the components of a database and  their datatypes, as well as how these components relate to one another (i.e. on a one-to one basis, a one-to-many basis, a many-to-many basis, as well as what kind of data the component is made up of (for example, strings, integers, and any data-type restrictions.))

In the above - drawing a line that represents the relationship to Genie and Lamp (Each lamp has one Genie, each Genie has one Lamp).

Draw a line that represents Person and Pet (Each person can have many pets; each pet can have one person.)

```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
Schema defines the columns in our table. The name of the table is listed out as well as the columns it will be composed of, what kind of data will be in that column (i.e. integers, text) and denotes which column will contain the unique serial or identifier key - this column must have a unique value for each row.)
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
INSERT INTO persons (name, age) VALUES ('Whitney Purdum', 30);
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
SELECT * FROM persons WHERE age < 15;
```

### Question 8

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
get '/oh_hello' do
  "hello world"
end
```
