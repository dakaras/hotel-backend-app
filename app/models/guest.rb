class Guest < ApplicationRecord
    has_secure_password
    has_many :reservations
    has_many :rooms, through: :reservations
    validates :name, :username, :password, presence: true
    validates :username, uniqueness: true
end
