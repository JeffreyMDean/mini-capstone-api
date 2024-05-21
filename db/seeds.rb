# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
product1 = Product.new(name: "fork", price: 2, image_url: "https://techcrunch.com/wp-content/uploads/2024/03/GettyImages-898655676.jpg", description: "This is for eating food.")
product1.save

product2 = Product.new(name: "spoon", price: 3, image_url: "https://m.media-amazon.com/images/I/51gadWnFOzS._AC_SL1500_.jpg", description: "This is for eating things out of a bowl.")
product2.save

product3 = Product.new(name: "toaster", price: 20, image_url: "https://assets.katomcdn.com/q_auto,f_auto,w_390,dpr_2/v1517273234/products/141/141-WCT702/141-wct702.jpg", description: "This is for toasting bread.")
product3.save

supplier1 = Supplier.new(name: "Adidas", email: "adidas@email.com", phone_number: "1214542389")
supplier1.save

supplier2 = Supplier.new(name: "Nike", email: "nike@email.com", phone_number: "8846246575")
supplier2.save


