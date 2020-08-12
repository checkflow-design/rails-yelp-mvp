# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0532343223", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "05323434543", category: "italian" }
troto =  { name: "Troto", address: "Nantes 44320", phone_number: "05323432123", category: "belgian" }
pizto =  { name: "Pizto", address: "31000 Toulouse", phone_number: "05323433234", category: "french" }
corol = { name: "Corol", address: "32000 Gers", phone_number: "05323433245", category: "french" }

[ dishoom, pizza_east, troto, pizto, corol ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
