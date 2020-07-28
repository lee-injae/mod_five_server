# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Location.destroy_all


am = Location.create(name:"adamsmorgan", latitude:38.920015 , longitude:-77.040678)
dupont = Location.create(name:"dupontcircle", latitude:38.909501 , longitude:-77.043416)
kalorama = Location.create(name:"kalorama", latitude: 38.913968, longitude:-77.046080 )
ust = Location.create(name:"ustreet", latitude: 38.917042, longitude:-77.029610)
wp = Location.create(name:"woodleypark", latitude: 38.929446, longitude:-77.054689)


ocean = User.create(email:"ocean@a.com", password:"password", nickname:"ocean", location_id: kalorama.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
alex = User.create(email:"thedesertfox2@a.com", password:"password", nickname:"alex", location_id: am.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
enrique = User.create(email:"epittab@a.com", password:"password", nickname:"enrique", location_id: dupont.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
davis = User.create(email:"ads@a.com", password:"password", nickname:"davis", location_id: kalorama.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
ahbi = User.create(email:"asharma@a.com", password:"password", nickname:"ahbinav", location_id: wp.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
saima = User.create(email:"saimaja@a.com", password:"password", nickname:"saima", location_id: wp.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
mert = User.create(email:"mertoz@a.com", password:"password", nickname:"mert", location_id: am.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
jesse = User.create(email:"jay@a.com", password:"password", nickname:"jesse", location_id: am.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
t = User.create(email:"tzipz@a.com", password:"password", nickname:"tomazye", location_id: ust.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
josh = User.create(email:"belgan@a.com", password:"password", nickname:"josh", location_id: ust.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
yo = User.create(email:"yo@a.com", password:"password", nickname:"yohan", location_id: dupont.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 
shannon = User.create(email:"shannon@a.com", password:"password", nickname:"shannon", location_id: kalorama.id, avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/World_ocean_map.gif/240px-World_ocean_map.gif") 


p1 = Post.create(title:"Wood Building Blocks", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: "clean, fun, safe, kids loves it!", image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: ocean.id, sold:0, buyer_id:nil)
p2 = Post.create(title:"Brown Rhino", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: "eco-friendly doll, kept clean, only had it for 2 months, selling because of moving, 50 or more", user_id: alex.id, sold:0, buyer_id:nil )
p3 = Post.create(title:"Playmobil Garbage Truck", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: enrique.id, sold:0, buyer_id:nil )
p4 = Post.create(title:"Pony", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: davis.id, sold:0, buyer_id:nil )
p5 = Post.create(title:"Handmade Safari Games", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: ahbi.id, sold:0, buyer_id:nil )
p6 = Post.create(title:"Must buy! Handmade Wooden Chair for kids! (African Art)", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: saima.id, sold:0, buyer_id:nil )
p7 = Post.create(title:"Squeaking Chicken", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: mert.id, sold:0, buyer_id:nil )
p8 = Post.create(title:"micro scooter(ruby color) for kids age 2-5, only used for a year, comes with a dinosaur helmet", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: jesse.id, sold:0, buyer_id:nil )
p9 = Post.create(title:"Baby Basketball Hoops", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: t.id, sold:0, buyer_id:nil )
p10 = Post.create(title:"Policecar", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: jesse.id, sold:0, buyer_id:nil )
p11 = Post.create(title:"Gray Rhino Ottoman", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: yo.id, sold:0, buyer_id:nil )
p12 = Post.create(title:"Playmobil Dump Truck", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: shannon.id, sold:0, buyer_id:nil )
p13 = Post.create(title:"Be the next Ringo Starr - Child Drummer Kit, almost new", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: ocean.id, sold:0, buyer_id:nil )
p14 = Post.create(title:"Star and Stripes Pool (capacity: 700kg)", price: Faker::Commerce.price(range: 10..300), date: Faker::Date.between(from: '2020-04-20', to: '2020-07-30'), description: Faker::Quotes::Shakespeare.hamlet_quote, image:"https://images-na.ssl-images-amazon.com/images/I/31m3skLnz3L._AC_.jpg", user_id: shannon.id, sold:0, buyer_id:nil )
