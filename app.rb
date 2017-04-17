class Animal

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def get_name
        return @name
    end

    def set_name
        @name = name
    end

    def greet
        puts "Hi! My name is #{@name}"

end


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

pumba = Animal.new("Pumba")
simba = Lion.new("simba")
