# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning up database..."
Restaurant.destroy_all
puts "Database cleanned."

puts "Creating restaurants..."

restaurants = [
  {
    name: "La Tour d'Argent",
    address: "15 Quai de la Tournelle, 75005 Paris",
    phone_number: "01 43 54 23 31",
    category: "french"
  },
  {
    name: "Sushi Saito",
    address: "1-9-15 Akasaka, Minato City, Tokyo",
    phone_number: "03 3589 4412",
    category: "japanese"
  },
  {
    name: "Luigi's",
    address: "Via Roma 42, Rome",
    phone_number: "+39 06 678 9954",
    category: "italian"
  },
  {
    name: "Peeking Express",
    address: "88 Dragon Street, Beijing",
    phone_number: "+86 10 8888 8888",
    category: "chinese"
  },
  {
    name: "La Tour d'Argent",
    address: "18 Rue des Bouchers, 1000 Brussels",
    phone_number: "+32 2 511 14 15",
    category: "belgian"
  }
]

restaurants.each do |attrs|
  Restaurant.create!(attrs)
end

puts "Created #{Restaurant.count} restaurants."
