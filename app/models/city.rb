class City < ApplicationRecord
    validates :name, uniqueness: true

    has_many :teams 
    has_many :leagues 
    has_many :stadiums
end
