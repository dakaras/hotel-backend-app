class RoomSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price
  has_many :reservations, serializer: ReservationSerializer
  has_many :guests, through: :reservations, serializer: RoomSerializer
end
