# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_category
  arr = %w[chinese italian japanese french belgian]
  arr.sample
end

def create_array
  arr = []
  5.times do
    arr << { name: Faker::Restaurant.name, address: Faker::Address.full_address,
             phone_number: Faker::PhoneNumber.cell_phone, category: create_category }
  end
  arr
end

puts 'Cleaning Database'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants = create_array

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  review = Review.new({ content: Faker::TvShows::MichaelScott.quote, rating: rand(0..5) })
  review.restaurant = restaurant
  review.save!
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
