class Pizza < ActiveRecord::Base
    before_validation :putsify
    validates :size, :sauce, :crust, presence: true

    has_many :pizza_toppings
    has_many :toppings, through: :pizza_toppings
    

    def putsify 
        self.size = 12
    end
end
