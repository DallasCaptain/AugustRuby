class Pizza < ActiveRecord::Base
    validates :sauce, presence: true
end
