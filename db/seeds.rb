require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Company.unique.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample,
    rating: rand(0..5)
  )
end
puts "Created #{Restaurant.count} restaurants."
