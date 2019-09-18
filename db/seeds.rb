# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
daniel = Guest.create(name: "Daniel", username: "DanielK", password: "test")
mary = Guest.create(name: "Mary", username: "MaryB", password: "password")

single = Room.create(name:"Single Room", price: 100)
single2 = Room.create(name:"Single Room", price: 100)
double = Room.create(name:"Double Room", price: 200)
double2 = Room.create(name:"Double Room", price: 200)
double3 = Room.create(name:"Double Room", price: 200)
suite = Room.create(name:"Suite", price: 300)
executive = Room.create(name:"Executive King", price: 400)

mary_reservation = mary.reservations.create(start_date:"10/9/19", end_date:"10/11/19", room_id:1, rating:nil)
daniel_reservation = daniel.reservations.create(start_date:"10/1/19", end_date:"10/20/19", room_id:6, rating:nil)
