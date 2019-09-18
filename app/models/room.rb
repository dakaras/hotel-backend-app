class Room < ApplicationRecord
    has_many :reservations
    has_many :guests, through: :reservations
end
