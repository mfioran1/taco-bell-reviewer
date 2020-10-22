class User < ApplicationRecord
    has_many :ratings
    has_many :tacos, through: :ratings
    has_secure_password

    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true
end
