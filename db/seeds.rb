# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ran_res = ["belgian", "chinese", "french", "italian", "japanese"]

# db/seeds.rb
require 'faker'

5.times do
  restaurant = Restaurant.new(
    name: Faker::JapaneseMedia::DragonBall.character,
    address: "#{Faker::Movies::VForVendetta.quote}",
    category: ran_res.sample,
    rating: rand(0..5)
    )
  restaurant.save!
end

# 5.times do
# restaurant = Restaurant.new(
#   name: "A",
#   address: "100 Water Street, NY, NYC",
#   category: "french",
#   rating: rand(0..5)
#   )
# restaurant.save!
# end
