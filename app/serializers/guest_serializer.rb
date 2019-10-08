class GuestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username
  has_many :reservations, serializer: ReservationSerializer
  has_many :rooms, through: :reservations, serializer: RoomSerializer

  attribute :reservations do |guest|
    guest.reservations.map do |res|{
      start_date: res.start_date,
      end_date: res.end_date
    }
    end
  end

  attribute :rooms do |guest|
    guest.rooms.map do |room|{
      room_type: room.name,
      price: room.price
    }
    end
  end
end
