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

puts 'Creating 3 admins...'

afolabi = User.create(email: 'aaafolayan@gmail.com', password: '1234567', nickname: 'afolabi')
hai = User.create(email: 'hai@gmail.com', password: '1234567', nickname: 'hai')
User.create(email: 'axel@axel.com', password: '1234567', nickname: 'axel')

puts 'Creating 5 delicious real meals...'

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
file1 = URI.open("https://takumi.koeln/wp-content/uploads/2021/10/ramen-koeln-2-shio.jpg")
takumi.photos.attach(io: file1, filename: 'ramen', content_type: 'image/jpg')
takumi.user = hai
takumi.save

puts 'creating ronna and beefshrooms...'
ronna = User.create(email: 'ronna@gmail.com', password: '1234567', nickname: 'Ronna Farley')
beefshrooms = Meal.new(
  name: "Beef and Mushrooms with Smashed Potatoes",
  category: "dinner",
  cuisine: "American",
  details: "I was inspired to make this recipe after I couldn't stop thinking of a similar dish served in my elementary school cafeteria more than 50 years ago! I like that it's quick to make, and my husband and grandchildren love it. —Ronna Farley",
  portions: 4,
  diet: "normal",
  allergens: 'mushrooms',
  expiry: "2022-09-05",
  address: "Rockville, Maryland"
)
file1 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/Beef-and-Mushrooms-with-Smashed-Potatoes_EXPS_SDON17_191910_D06_30_2b-4.jpg?fit=700,1024")
beefshrooms.photos.attach(io: file1, filename: 'beefshrooms', content_type: 'image/jpg')
beefshrooms.user = ronna
beefshrooms.save

puts 'creating Josephine and salmon chowder...'
josephine = User.create(email: 'josephine@gmail.com', password: '1234567', nickname: 'Josephine Parton')
salchow = Meal.new(
  name: "Simple Salmon Chowder",
  category: "dinner",
  cuisine: "American",
  details: "I've lived on a farm in the Yakima Valley all my life. I have a big garden, and by the end of fall, my cellar shelves are full of canned fruits and vegetables. This salmon chowder recipe uses some of the root vegetables I grow—along with the delicious salmon that is so plentiful here.",
  portions: 8,
  diet: "pescetarian",
  allergens: 'carrots, celery',
  expiry: "2022-09-05",
  address: "Granger, Washington"
)
file2 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/Northwest-Salmon-Chowder_EXPS_COTS21_9594_G05_04_1b.jpg?fit=700,1024")
salchow.photos.attach(io: file2, filename: 'salchow', content_type: 'image/jpg')
salchow.user = josephine
salchow.save

puts 'creating Ruby and Jambalaya...'
ruby = User.create(email: 'ruby@gmail.com', password: '1234567', nickname: 'Ruby Williams')
creojam = Meal.new(
  name: "Creole Jambalaya",
  category: "main",
  cuisine: "Creole",
  details: "Jambalaya is a traditional Louisiana dish, coming from our Spanish and French culture. Rice is the main ingredient, with different meats or seafood mixed in. I particularly like this variation with shrimp and ham.",
  portions: 8,
  diet: "normal",
  allergens: 'seafood',
  expiry: "2022-09-05",
  address: "Lousiana"
)
file3 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/exps3123_SF143315D11_05_5b_WEB-2.jpg?fit=700,1024")
creojam.photos.attach(io: file3, filename: 'creojam', content_type: 'image/jpg')
creojam.user = ruby
creojam.save

puts 'creating summer rolls...'
sumrolls = Meal.new(
  name: "Fresh summer rolls",
  category: "main",
  cuisine: "Vietnamese",
  details: "Fresh homemade hand rollen summer rolls ",
  portions: 8,
  diet: "normal",
  allergens: 'seafood',
  expiry: "2022-09-05",
  address: "Belgisches Viertel, Cologne"
)
file4 = URI.open("https://cdn.statically.io/img/www.aheadofthyme.com/f=auto//wp-content/uploads/2021/07/vietnamese-summer-rolls-with-chicken-2.jpg")
sumrolls.photos.attach(io: file4, filename: 'sumrolls', content_type: 'image/jpg')
sumrolls.user = hai
sumrolls.save

puts 'creating jollof rice...'
jollof = Meal.new(
  name: "Jollof rice",
  category: "main",
  cuisine: "Nigerian",
  details: "Best Jollof rice in the world, far superior to Ghanaian 'version'",
  portions: 8,
  diet: "normal",
  allergens: 'none',
  expiry: "2022-09-05",
  address: "Hohenzollernring, Cologne"
)
file5 = URI.open("https://cheflolaskitchen.com/wp-content/uploads/2018/10/Jollof-Rice-55.jpg")
jollof.photos.attach(io: file5, filename: 'jollof', content_type: 'image/jpg')
jollof.user = afolabi
jollof.save

puts 'Finished!'
