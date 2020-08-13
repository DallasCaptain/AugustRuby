class Buyer
    attr_accessor :money

    def initialize money
        
    end

    def buy_soda
        if @money > 0
            true
        else
            false
        end
    end
end