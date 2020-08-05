# local_var = 0
# @instance_var = 9
# @@class_var =8
# $global_var just dont do it

class User
    #instance variable aka attribute
    @name
    #getter method
    def name
        @name
    end
    #setter method
    def name= val
        @name = val
    end

end

user1 = User.new
user1.name='bob'


class Bike
    @@bikes_sold = 0
    @@redBikes_sold
    attr_accessor :color, :brand

    def initialize color, brand
        @color = color
        @brand = brand
        @@bikes_sold += 1    
    end
    def pumptires
        puts'pumping you up'
        self
    end

    def numSold
        @@bikes_sold
    end
end

bike1 = Bike.new 'blue', 'huffy'
puts bike1.numSold
bike2 = Bike.new 'red', 'shwin'
puts bike2.numSold
puts bike1.inspect

for i in 0..20 
    Bike.new 'red', 'shwin'
end
puts bike1.numSold
puts bike1.pumptires.pumptires.inspect
