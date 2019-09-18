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

Reservation
-start date
-end date
-guest_id
-room_id
-ratings
