# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Property.create({
  name: "Lichi Garden",
  headline: "Best Resort in Jungle",
  description: "This is one of the best resort in Bangladesh",
  address_1: "Rajshahi, Bangladesh",
  address_2: "Dinajpur, Bangladesh",
  city: "Rajshahi",
  state: "Charghat",
  country: "Bangladesh",
  price: "4800"
})

Property.create({
  name: "Mango Garden",
  headline: "Best Resort in Mango Garden",
  description: "This is one of the best resort in Rajshahi",
  address_1: "Rajshahi, Bangladesh",
  address_2: "Dinajpur, Bangladesh",
  city: "Rajshahi",
  state: "Charghat",
  country: "Bangladesh",
  price: "5000"
})

Property.create({
  name: "Orange Garden",
  headline: "Best Resort in Sylhet",
  description: "This is one of the best resort in Sylhet",
  address_1: "Sylhet, Bangladesh",
  city: "Sylhet",
  state: "Jalalabad",
  country: "Bangladesh",
  price: "4500"
})