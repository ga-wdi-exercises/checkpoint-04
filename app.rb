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

Pumba = Animal.new("Pumba")
