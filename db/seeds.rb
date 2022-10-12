# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


300.times do
  Farmer.create(name: Faker::Name.name ,  id_number: rand(100000-500000), membership_number: rand(1000..5000), image_url: "https://as2.ftcdn.net/v2/jpg/02/24/86/95/1000_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg")
end
100.times do
  FarmerOutputDelivery.create(date:Faker::Date.between(from: '2022-01-01', to: '2022-04-05'), cherry_kgs_delivered: rand(2..10000), farmer_id: rand(1..300))
end

160.times do
  FarmerInput.create(name: "Copper", description:Faker::Lorem.sentence,  expirydate:Faker::Date.between(from: '2022-05-01', to: '2022-07-25'))
end

150.times do
  Book.create(farm_input_id:rand(1..160) , date_booked:Faker::Date.between(from: '2022-06-23', to: '2022-09-25'),  quantity: rand(1..60))
end

Admin.create(username: "MarkBrianK" , email:"Kariukimarkbrian@gmail.com" ,password_digest:12345678, user_id:1)

300.times do
  User.create(email:Faker::Internet.email, password_digest:5000000..1000000, farmer_id:rand(1..300))
end
