class RoomSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price
  has_many :reservations
  has_many :guests, through: :reservations
end
