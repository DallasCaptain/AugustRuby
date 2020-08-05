class Mammal
    def initialize name
        @name = name
        puts 'mammal pride'
    end
    def talk
        puts 'eeek'
    end
end

class Elephant < Mammal

    def initialize
        puts 'elephant power'
        super 'george'
    end
    def speak
        puts "I am #{@name}"
        talk
        
    end
    def talk
        puts 'not eeking'
        super
    end
end

george = Elephant.new 
george.speak