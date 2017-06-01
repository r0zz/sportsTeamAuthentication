class Team < ApplicationRecord
    validates :name, uniqueness: true
    belongs_to :stadium
    belongs_to :city
    belongs_to :league, dependent: :destroy
end
