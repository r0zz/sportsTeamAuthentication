class Stadium < ApplicationRecord
    validates :name, uniqueness: true
end
