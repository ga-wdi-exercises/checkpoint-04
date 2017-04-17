
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello I'm an animal and my name is #{name}"
  end

  def get_name
    @name
  end

  def set_name(newName)
    @name = newName
  end
end

class Lion < Animal
  attr_accessor :name, :pack

  def initialize(name)
    @name = name
    @pack = []
    @pack.push(self)
    @king = false

    if @name == "Simba || simba"
      @king = true
    end
  end

end


pumba = Animal.new("pumba")
pumba.greet
simba = Lion.new("Simba")
simba.greet
