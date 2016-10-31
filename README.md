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
def offer_rose person
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

offer_rose "young prince"

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

town.castle.residents << town.residents[1]
town.delete.("Belle")

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
friends.each do |x|
  puts "Belle is friends with #{x}"
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
    puts "hello, my name is #{name}"
  end

end

pumba = Animal.new("Pumba")


  class Lion > Animal
    def initialize (name, pack)
      super (name)
      @king = false
      if @name == "Simba"
        @king = true
      end
      @@pack = pack
    end

  end

simba = Lion.new("Simba")    



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
An ERD is a diagram that shows the relationships between various entities that make up an application. It's helpful to sketch these out before beginning to code them as the relationships can form a complex structure and may require foresight to design and implement without writing duplicative code or leaving out functionality.

Genie/Lamp relationships:
A Genie could have many masters (persons), but only one at a time
A Genie would have many grantable wishes, but only 3 per person
A Genie would presumably have a name (though not in Disney's version)

A Lamp has one genie
A Lamp has one owner(person)

A Person could have many Lamps
A Person has a maximum of 3 wishes per Lamp
A Person could have many Pets
A Person has an age/name/gender etc (attributes)

A Pet has an age/name/gender etc

```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use: people and wishes
(one-to-many).

Your answer:
```
A schema is the means to set up the relationships between our data and ruby. It sets up the tables that the seed file seeds data into, and joins the tables based on how they should relate.

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
drew = Person.create(name: "Drew", age: 32)

```

Write ruby code that will query for any person that is 15 years of age

Your answer:
```
Person.where(age: 15)
```

### Sinatra

Write a route in sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer:
```
get '/oh_hello' do
"hello world"
end

```
