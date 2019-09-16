Model Associations

Guest
-has many reservations
-has many rooms, through reservations

Room
-has many reservations
-has many guests, through reservations

Reservation
-belongs to room
-belongs to guest

Rating
-belongs to guest
-belongs to room

Amenities
-belongs to room

Guest Stories
-guest should be able to book and cancel reservation with number of rooms 
-rate their room
-add or remove additional amenities 
-check for room vacancies

Models

Guest
-name
-username
-password

Room
-name
-price
-quantity

Reservation
-start date
-end date
-guest_id
-room_id

Amenities
-name
-price
-room_id

Rating
-stars
-guest_id
-room_id