# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Cameron", email: "test@test.com", password: "password", admin: true)

Supplier.create(name: "Apple", email: "apple.com", phone_number: "1233444")
Supplier.create(name: "Google", email: "google.com", phone_number: "765432")
Supplier.create(name: "Samsung", email: "samsung.com", phone_number: "4345345")

Product.create(name: "Iphone", price: 900, description: "Elegant", supplier_id: 1)
Product.create(name: "Android", price: 1000, description: "Robust", supplier_id: 1)
Product.create(name: "Blackberry", price: 20, description: "Absent", supplier_id: 2)

Image.create(product_id: 1, url: "https://ih1.redbubble.net/image.1849445138.4826/st,small,507x507-pad,600x600,f8f8f8.jpg")
Image.create(product_id: 1, url: "https://images.idgesg.net/images/article/2020/08/android-awkward-timing-100855433-large.jpg?auto=webp&quality=85,70")
Image.create(product_id: 1, url: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-pro-max-graphite-select?wid=470&hei=556&fmt=jpeg&qlt=95&.v=1631652956000")
puts "Done!"
