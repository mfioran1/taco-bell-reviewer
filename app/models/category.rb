class Category < ApplicationRecord
    has_many :tacos
    has_many :ratings, through: :tacos
    
end
