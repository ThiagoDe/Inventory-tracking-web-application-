# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Warehouse.destroy_all
Product.destroy_all

# com1 = Comment.create!(body: "Thanks for sharing your secrets!", user_id: user4.id, video_id: vid2.id)
w1 =  Warehouse.create!(name: 'CA Warehouse', location: 'Los Angeles')
w2 =  Warehouse.create!(name: 'Texas Warehouse', location: 'Austin')
w3 =  Warehouse.create!(name: 'NY Warehouse', location: 'New York')
w4 =  Warehouse.create!(name: 'Massachusetts Warehouse', location: 'Boston')
w5 =  Warehouse.create!(name: 'Nevada Warehouse', location: 'Las Vegas')
w6 =  Warehouse.create!(name: 'Brazil Warehouse', location: 'Sao Paulo')

p1 = Product.create!(description: 'Guitar', price: 2600.99, quantity: 7, warehouse_id: w1.id)
p2 = Product.create!(description: 'Jeans', quantity: 88, price: 150.58, warehouse_id: w2.id)
p3 = Product.create!(description: 'Snowboard', quantity: 124, price: 600.00, warehouse_id: w3.id)
p4 = Product.create!(description: 'Headphone', quantity: 53, price: 430.00, warehouse_id: w4.id)
p5 = Product.create!(description: 'T-shirt', quantity: 735, price: 59.99, warehouse_id: w5.id)
p6 = Product.create!(description: 'Hat', quantity: 75, price: 29.99, warehouse_id: w6.id)
p7 = Product.create!(description: 'Candles', quantity: 445, price: 9.99, warehouse_id: w1.id)
p8 = Product.create!(description: 'lightsaber', quantity: 5, price: 559.99, warehouse_id: w1.id)
p9 = Product.create!(description: 'Black Shoes', quantity: 99, price: 159.99, warehouse_id: w2.id)
p10 = Product.create!(description: 'Belt', quantity: 1768, price: 15.99, warehouse_id: w2.id)
p11 = Product.create!(description: 'Hotwheels', quantity: 1200, price: 49.99, warehouse_id: w3.id)
p12 = Product.create!(description: 'Bicycle', quantity: 75, price: 1500.99, warehouse_id: w3.id)
p13 = Product.create!(description: 'Wine', quantity: 344, price: 359.99, warehouse_id: w4.id)