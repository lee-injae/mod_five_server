# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Location.destroy_all

am = Location.create(name:"Adams Morgan", latitude:38.920015 , longitude:-77.040678)
dupont = Location.create(name:"Dupont Circle", latitude:38.909501 , longitude:-77.043416)
kalorama = Location.create(name:"Kalorama", latitude: 38.913968, longitude:-77.046080 )
ust = Location.create(name:"U Street", latitude: 38.917042, longitude:-77.029610)
wp = Location.create(name:"Woodley Park", latitude: 38.929446, longitude:-77.054689)


ocean = User.create(email:"ojl@abc.com", password_digest:"password", nickname:"ocean", location_id: kalorama.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 

p1 = Post.create(title:"toy car", price: Faker::Commerce.price(range: 10..1000), date: DateTime.new(2020,07,22), image: "https://images-na.ssl-images-amazon.com/images/I/61kHFl7bYRL._AC_SL1400_.jpg", description: "clean, fun, safe, kids loves it!", user_id: ocean.id, status:0, buyer_id:nil)

p2 = Post.create(title:"clean blabla doll", price: Faker::Commerce.price(range: 10..1000), date: DateTime.new(2019,11,22), image: "https://images-na.ssl-images-amazon.com/images/I/81xZjGxMC7L._SL1500_.jpg", description: "eco-friendly doll, kept clean, only had it for 2 months, selling because of moving, 50 or more", user_id: ocean.id, status:0, buyer_id:nil )


