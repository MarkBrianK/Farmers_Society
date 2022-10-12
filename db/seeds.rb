# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


300.times do
  Farmer.create(name: Faker::Name.name ,  id_number: rand(100000-500000), membership_number: rand(1000..5000))
end
# 150.times do
#   FarmerInput.create( name:, description: , expirydate:)
# end
# 100.times do
#   FarmerOutputDelivery.create(date:, cherry_kgs_delivered:, farmer_id:)
# end

# 150.times do
#   Book.create(farm_input_id: , date_booked:,  quantity:)
# end

# Admin.create(username: , email: ,password_digest:, user_id:)

# 300.times do
#   User.create(username:, email:, password_digest:, farmer_id:)
# end
