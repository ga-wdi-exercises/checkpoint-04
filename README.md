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
# code here
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
# code here
town[:guests] = town[:residents].fetch(1)
town[:residents].delete("Belle")

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
# code here
friends.each{|e| puts "Belle is friends with #{e}"}
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
# code here
class Animal
	attr_accessor :name

	def initialize(name)
			@name=name
	end
	def greet
		puts "Hello #{@name}"
	end

end


class Lion < Animal

	attr_accessor :pack

	@@pack =0

	def initialize(name)
		super(name)
		if(@name =="Simba")
			@king = true
		else
			@king = false
		end

		@@pack +=1
	end

	def get_pack_num
		@@pack
	end

end

pumba = Animal.new("Pumba")

timon = Lion.new("Timon")

simba = Lion.new("Simba")

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
An ERD is a way for us to represent a diagram of relationships. It describes how we want to model specific collections of data within our database schema.

Genie is a 1:1 relationship with a lamp, The genie belongs to the one lamp
and the lamp belongs to the one genie. Each lamp can only have one genie ( or I have not seen Aladdin in far too long..)

a Person to a pet is a M:1 relationship (this assumes EACH pet has 1 owner, if Mom buys pet then mom is owner not dad even if dad is there) A person may have many pets and a pet can only have one owner.
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
A schema is the skeleton diagram containing the attributes of each table as well as the relationships between the tables. It allows us to visualize and see how the data is related and represented within the database.
1:1
1:M
M:M (which needs its own table between with common attributes)

in a SQL database we represent a people as the one side and wishes as the many side

a person can have many wishes but a wish may only belong to one person.


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

person = Person.create(name: "Bob", age:14)
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
Person.where(age: 15)
```

### Question 8

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
get "/oh_hello" do
  "Hello World"
end
```
