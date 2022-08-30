# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(name: "Daisy Alexandria", email: "daisy@test.com", password: "password")
User.create!(name: "Lily Angelica", email: "lily@test.com", password: "password")
User.create!(name: "Quetzalli Carmen", email: "quetz@test.com", password: "password")

shirt = Category.create!(name: "shirt")
bottom = Category.create!(name: "bottom")
dress = Category.create!(name: "dress")

red = Color.create!(name: red)
blue = Color.create!(name: blue)
white = Color.create!(name: white)

Garment.create!(name: "tshirt", color_id: white.id, category_id: shirt.id, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIcNEUkj7x6lChKCNZDPVS0Bnze1HK88eACg&usqp=CAU")
Garment.create!(name: "jeans", color_id: blue.id, category_id: bottom.id, image: "https://cdn.shopify.com/s/files/1/0501/1669/products/image-Levi_s90sJean_faa9707f-742e-412e-b1fb-0b380aa2c7ae_1080x.jpg?v=1651782948")