# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
daniel = Guest.create(name: "Daniel", username: "DanielK", password: "test")
mary = Guest.create(name: "Mary", username: "MaryB", password: "password")

single = Room.create(name:"Single Room", price: 100, quantity: 10)
double = Room.create(name:"Double Room", price: 200, quantity: 10)
suite = Room.create(name:"Suite", price: 300, quantity: 10)
executive = Room.create(name:"Executive King", price: 400, quantity: 10)

mary_reservation = mary.reservations.create(start_date:"10/9/19", end_date:"10/11/19", room_id:1)

