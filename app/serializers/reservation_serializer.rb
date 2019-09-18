class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :room
  belongs_to :guest
  attributes :start_date, :end_date, :rating, :guest_id, :room_id
end
