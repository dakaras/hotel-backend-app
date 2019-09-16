class GuestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username
  has_many :reservations
  has_many :rooms, through: :reservations
end
