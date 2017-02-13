class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi, my name is #{name}!"
  end
end

class Lion < Animal
  attr_accessor :name, :king, :pack
  @@pack = []
  def initialize(name)
    super(name)
    @@pack << self
    if @name == "Simba"
      @king = true
    else
      @king = false
    end
  end

  def kingship
    puts "It is #{king} that I am king."
  end

  def self.pack
    @@pack
  end
end

pumba = Animal.new("Pumba")
simba = Lion.new("Simba")
nala = Lion.new("Nala")

puts Lion.pack
simba.kingship
nala.kingship
