# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Meal.destroy_all
User.destroy_all

puts 'Creating 13 fake users and 11 meals...'
10.times do
  user = User.create(
    email:    Faker::Internet.email,
    password: Faker::Internet.password
  )
  meal = Meal.new(
    name: Faker::Food.dish,
    category: ['breakfast', 'lunch', 'dinner'].sample,
    cuisine: Faker::Food.ethnic_category,
    details: Faker::Food.description,
    portions: [1, 2, 3, 4].sample,
    diet: ['vegan', 'keto', 'no-restrictions', 'paleo', 'carnivore'].sample,
    allergens: ['none', 'peanut', 'none', 'gluten', 'shellfish', 'wheat', 'none', 'none', 'lactose'].sample,
    expiry: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    address: Faker::Address.city
  )
  meal.user = user
  meal.save

end
User.create(email: 'aaafolayan@gmail.com', password: '1234567', nickname: 'afolabi')
hai = User.create(email: 'hai@gmail.com', password: '1234567', nickname: 'hai')
User.create(email: 'axel@axel.com', password: '1234567', nickname: 'axel')

takumi = Meal.new(
  name: "Tonkotsu Ramen",
  category: "noodle soup",
  cuisine: "Japanese",
  details: "Homemade Ramen noodles in a delicious pork bone broth topped with Chashu and green onions from our garden",
  portions: 10,
  diet: "normal",
  allergens: 'sesame',
  expiry: "2022-09-05",
  address: "Takumi Cologne"
)
takumi.user = hai
takumi.save

puts 'Finished!'
