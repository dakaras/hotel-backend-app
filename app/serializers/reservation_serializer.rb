class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :start_date, :end_date, :rating, :guest_id, :room_id
  belongs_to :room
  belongs_to :guest
end
