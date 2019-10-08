class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :start_date, :end_date, :rating, :guest_id, :room_id
  belongs_to :room
  belongs_to :guest

  attribute :guest_json do |guest| 
    guest.reservations.map do |reservation|{
      room_type: reservation.room.name,
      price: reservation.room.price,
      start_date: reservation.start_date,
      end_date: reservation.end_date
    }
    end
  end
end
