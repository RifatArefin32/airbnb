# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Property.create({
#   name: "Lichi Garden",
#   headline: "Best Resort in Jungle",
#   description: "This is one of the best resort in Bangladesh",
#   address_1: "Rajshahi, Bangladesh",
#   address_2: "Dinajpur, Bangladesh",
#   city: "Rajshahi",
#   state: "Charghat",
#   country: "Bangladesh",
#   price: "4800",
# })

6.times do |i|
  Property.create({
    name: Faker::Company.name,
    headline: Faker::Lorem.unique.sentence(word_count: 5),
    description: Faker::Lorem.paragraph(sentence_count: 10),
    address_1: Faker::Address.full_address,
    address_2: Faker::Address.full_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
    price: Faker::Commerce.price,
    image_url: "/images/property_#{i+1}.jpeg"
  })
end
