class Taco < ApplicationRecord
    has_many :ratings
    has_many :users, through: :ratings
    belongs_to :category
    

    validates :name, presence: true
end
