class Sandwhiche < ActiveRecord::Base
    validates :bread, presence: true
end
