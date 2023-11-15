# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants = [
  { name: "Chez Pierre", address: "123 Rue de la Paix, Paris", phone_number: "01 2345 6789", category: "french" },
  { name: "Sushi Delight", address: "456 Sushi Street, Tokyo", phone_number: "81 90 1234 5678", category: "japanese" },
  { name: "Pasta Paradise", address: "789 Pasta Avenue, Rome", phone_number: "39 06 9876 5432", category: "italian" },
  { name: "Spicy Noodles", address: "321 Spice Lane, Beijing", phone_number: "86 10 8765 4321", category: "chinese" },
  { name: "Belgian Bites", address: "555 Waffle Road, Brussels", phone_number: "32 2 3456 7890", category: "belgian" }
]

restaurants.each { |attributes| Restaurant.create!(attributes) }

puts "Seed data has been created!"
