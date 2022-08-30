# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
Meal.destroy_all


puts 'Creating 100 fake users and meals...'
100.times do
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
    expiry: Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
  )
  meal.user = user
  meal.save
end


puts 'Finished!'
