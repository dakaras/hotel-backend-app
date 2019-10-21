class Reservation < ApplicationRecord
    belongs_to :room
    belongs_to :guest

    validates :start_date, :end_date, :guest, :room, presence: true
end
