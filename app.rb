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

class Lion < Person

    def get_name
        return @name
    end

    def set_name
        @name = name
    end

    def greet
        puts "Hi! My name is #{@name}"

end
