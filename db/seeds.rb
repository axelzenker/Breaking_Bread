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

puts 'Creating 14 admins...'

afolabi = User.create(email: 'aaafolayan@gmail.com', password: '1234567', nickname: 'afolabi')
hai = User.create(email: 'hai@gmail.com', password: '1234567', nickname: 'hai')
axel = User.create(email: 'axel@axel.com', password: '1234567', nickname: 'axel')
ronna = User.create(email: 'ronna@gmail.com', password: '1234567', nickname: 'Ronna Farley')
josephine = User.create(email: 'josephine@gmail.com', password: '1234567', nickname: 'Josephine Parton')
ruby = User.create(email: 'ruby@gmail.com', password: '1234567', nickname: 'Ruby Williams')
jeff = User.create(email: 'jef@gmail.com', password: '1234567', nickname: 'Jeff Sunderland')
damon = User.create(email: 'damon@gmail.com', password: '1234567', nickname: 'The Dude')
sabrina = User.create(email: 'sabrina@gmail.com', password: '1234567', nickname: 'Sabrina')
justus = User.create(email: 'justus@gmail.com', password: '1234567', nickname: 'Justus')
johnson = User.create(email: 'johnson@gmail.com', password: '1234567', nickname: 'Johnson')
william = User.create(email: 'william@gmail.com', password: '1234567', nickname: 'William')
eri = User.create(email: 'eri@gmail.com', password: '1234567', nickname: 'Eri')
natalia = User.create(email: 'natalia@gmail.com', password: '1234567', nickname: 'Natalia')
diego = User.create(email: 'diego@gmail.com', password: '1234567', nickname: 'Diego')



puts 'Creating 19 delicious real meals...'

puts 'creating Tonkotsu Ramen...'
tonkotsu-ramen = Meal.new(
  name: "Tonkotsu Ramen",
  category: "Noodle Soup",
  cuisine: "Japanese",
  details: "I was inspired to make this recipe after I couldn't stop thinking of a similar dish served in my elementary school cafeteria more than 50 years ago! I would love to share one of my favorite meals.",
  portions: 1,
  diet: "normal",
  allergens: 'Sesame, Wheat, Eggs, Fish',
  expiry: "2022-09-12",
  address: "Spichernstraße 8, 50672 Cologne"
)
file1 = URI.open("https://takumi.koeln/wp-content/uploads/2021/10/ramen-koeln-2-shio.jpg")
takumi.photos.attach(io: file1, filename: 'ramen', content_type: 'image/jpg')
takumi.user = hai
takumi.save

puts 'creating beefshrooms...'
beefshrooms = Meal.new(
  name: "Beef and Mushrooms with Smashed Potatoes",
  category: "Meat & Poultry",
  cuisine: "American",
  details: "A lovely meal which I cooked to last night. I would be happy to share with somebody!",
  portions: 2,
  diet: "Carnivore",
  allergens: 'mushrooms','wheat'
  expiry: "2022-09-14",
  address: "Meister-Ekkehart-Straße 9, 50937 Cologne"
)
file2 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/Beef-and-Mushrooms-with-Smashed-Potatoes_EXPS_SDON17_191910_D06_30_2b-4.jpg?fit=700,1024")
beefshrooms.photos.attach(io: file2, filename: 'beefshrooms', content_type: 'image/jpg')
beefshrooms.user = ronna
beefshrooms.save

puts 'creating Salmon chowder...'
salchow = Meal.new(
  name: "Simple Salmon Chowder",
  category: "Soup",
  cuisine: "American",
  details: "I've lived on a farm in the Yakima Valley all my life. I have a big garden, and by the end of fall, my cellar shelves are full of canned fruits and vegetables. This salmon chowder recipe uses some of the root vegetables I grow—along with the delicious salmon that is so plentiful here.",
  portions: 8,
  diet: "Pescetarian",
  allergens: 'fish',
  expiry: "2022-09-15",
  address: "Zülpicher Straße 203, 50937 Cologne"
)
file3 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/Northwest-Salmon-Chowder_EXPS_COTS21_9594_G05_04_1b.jpg?fit=700,1024")
salchow.photos.attach(io: file3, filename: 'salchow', content_type: 'image/jpg')
salchow.user = josephine
salchow.save

puts 'creating Jambalaya...'
creojam = Meal.new(
  name: "Creole Jambalaya",
  category: "Soup",
  cuisine: "American",
  details: "Jambalaya is a traditional dish, coming from our Spanish and French culture. Rice is the main ingredient, with different meats or seafood mixed in. I particularly like this variation with shrimp and ham.",
  portions: 5,
  diet: "Carnivore",
  allergens: 'fish',
  expiry: "2022-09-10",
  address: "Lothringer Straße 22, 50677 Cologne"
)
file4 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/exps3123_SF143315D11_05_5b_WEB-2.jpg?fit=700,1024")
creojam.photos.attach(io: file4, filename: 'creojam', content_type: 'image/jpg')
creojam.user = ruby
creojam.save

puts 'creating summer rolls...'
sumrolls = Meal.new(
  name: "Fresh summer rolls",
  category: "Cold Food",
  cuisine: "Vietnamese",
  details: "Fresh homemade hand rollen summer rolls ",
  portions: 8,
  diet: "Vegan",
  allergens: '',
  expiry: "2022-09-10",
  address: "Maternusstraße 15, 50678 Cologne"
)
file5 = URI.open("https://cdn.statically.io/img/www.aheadofthyme.com/f=auto//wp-content/uploads/2021/07/vietnamese-summer-rolls-with-chicken-2.jpg")
sumrolls.photos.attach(io: file5, filename: 'sumrolls', content_type: 'image/jpg')
sumrolls.user = hai
sumrolls.save

puts 'creating jollof rice...'
jollof = Meal.new(
  name: "Jollof rice",
  category: "One Pot Dish",
  cuisine: "Nigerian",
  details: "Best Jollof rice in the world, far superior to Ghanaian 'version'. Happy to share :)",
  portions: 3,
  diet: "Vegetarian",
  allergens: 'includes Meat broth',
  expiry: "2022-09-12",
  address: "Karl-Korn-Straße 10, 50678 Cologne"
)
file6 = URI.open("https://cheflolaskitchen.com/wp-content/uploads/2018/10/Jollof-Rice-55.jpg")
jollof.photos.attach(io: file6, filename: 'jollof', content_type: 'image/jpg')
jollof.user = afolabi
jollof.save

puts 'creating beef-paprikash...'
beef-paprikash = Meal.new(
  name: "Beef Paprikash with Fire-Roasted Tomatoes",
  category: "Stew",
  cuisine: "Hungarian",
  details: "Beef paprikash, a Hungarian dish, makes a marvelous dinner. I have plenty of portions for pick-up ready.",
  portions: 6,
  diet: "Carnivore",
  allergens: 'wheat','butter', 'meat'
  expiry: "2022-09-12",
  address: "Biberstraße 32, 50678 Cologne"
)
file7 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/exps187883_TH153343C04_14_2b-1.jpg?fit=700,1024")
beef-paprikash.photos.attach(io: file7, filename: 'beef-paprikash', content_type: 'image/jpg')
beef-paprikash.user = jeff
beef-paprikash.save

puts 'creating chicken-rice-skillet...'
chicken-rice-skillet = Meal.new(
  name: "Chicken Rice Skillet",
  category: "One Pot Dish",
  cuisine: "American",
  details: "Pleasant seasonings and plenty of vegetables highlight this traditional chicken and rice pairing. Can be easily reheated in the oven or microwave.",
  portions: 6,
  diet: "Carnivore",
  allergens: 'wheat','butter', 'meat'
  expiry: "2022-09-12",
  address: "Landsbergstraße 26, 50678 Cologne"
)
file8 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/Chicken-Rice-Skillet_EXPS_MIOPBZ17_15416_C10_13_5b-4.jpg?fit=700,1024")
chicken-rice-skillet.photos.attach(io: file8, filename: 'chicken-rice-skillet', content_type: 'image/jpg')
chicken-rice-skillet.user = jeff
chicken-rice-skillet.save

puts 'creating bean&beef chili...'
bean-beef-chili = Meal.new(
  name: "Bean & Beef Slow-Cooked Chili",
  category: "One Pot Dish",
  cuisine: "American",
  details: "This chili may be already chock-full, but we have it up even more topped up with toppings like pico de gallo, red onion, cilantro and cheese.",
  portions: 3,
  diet: "Carnivore",
  allergens: 'wheat','butter', 'meat', 'onion'
  expiry: "2022-09-14",
  address: "Löwengasse 9, 50676 Cologne"
)
file9 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/exps79528_SD153319B10_07_5b-2.jpg?fit=700,1024")
bean-beef-chili.photos.attach(io: file9, filename: 'bean-beef-chili', content_type: 'image/jpg')
bean-beef-chili.user = damon
bean-beef-chili.save

puts 'creating hay and straw...'
hay-straw = Meal.new(
  name: "Hay and Straw",
  category: "Pasta",
  cuisine: "Italian",
  details: "This colorful pasta dish combines julienned ham, Parmesan cheese, peas and linguine",
  portions: 4,
  diet: "Carnivore",
  allergens: 'wheat','butter', 'meat', 'onion'
  expiry: "2022-09-14",
  address: "Krummer Büchel 2, 50676 Cologne"
)
file10 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2018/01/exps21282_FF163882B01_13_6b.jpg?fit=700,1024")
hay-straw.photos.attach(io: file10, filename: 'hay-straw', content_type: 'image/jpg')
hay-straw.user = sabrina
hay-straw.save

puts 'creating green bean soup...'
bean-soup = Meal.new(
  name: "Bean Soup",
  category: "Soup",
  cuisine: "German",
  details: "Healthy and tasty soup. It's craveable on cold and rainy days.",
  portions: 4,
  diet: "Carnivore",
  allergens: 'meat',
  expiry: "2022-09-10",
  address: "Wöhlerstraße 35, 50823 Cologne"
)
file10 = URI.open("https://img.chefkoch-cdn.de/rezepte/999441205246890/bilder/1351902/crop-960x640/leckere-gruene-bohnensuppe.jpg")
bean-soup.photos.attach(io: file11, filename: 'bean-soup', content_type: 'image/jpg')
bean-soup.user = justus
bean-soup.save

puts 'creating hong kong french toast...'
french-toast = Meal.new(
  name: "Hong Kong French Toast",
  category: "Breakfast",
  cuisine: "Hong Kong",
  details: "Stuffed with peanut butter, soaked in custard, fried to golden crispy perfection, and drizzled with sweetened condensed milk, it takes this classic breakfast treat to a whole new level.",
  portions: 4,
  diet: "Vegetarian",
  allergens: 'egg', 'wheat'
  expiry: "2022-09-10",
  address: "Siebachstraße 105, 50733 Cologne"
)
file11 = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-220823-hong-kong-french-toast-388-horizontal-rv-web-1662038739.jpg?crop=0.895xw:0.855xh;0.0646xw,0.128xh&resize=980:*")
french-toast.photos.attach(io: file11, filename: 'french-toast', content_type: 'image/jpg')
french-toast.user = johnson
french-toast.save

puts 'creating cheesy brussels sprout...'
brussels-sprout = Meal.new(
  name: "Cheesy Brussels Sprout Bake",
  category: "One Pot Dish",
  cuisine: "Dutch",
  details: "This is one side dish that will make everyone freak out (and run for seconds). Tastes very reheated as well :)",
  portions: 2,
  diet: "Vegetarian",
  allergens: 'egg', 'wheat'
  expiry: "2022-09-12",
  address: "Mauenheimer Straße 20, 50733 Cologne"
)
file12 = URI.open("https://hips.hearstapps.com/del.h-cdn.co/assets/18/11/1520902273-shot-1-56.jpg?crop=1.0xw:1xh;center,top&resize=980:*")
brussels-sprout.photos.attach(io: file12, filename: 'brussels-sprout', content_type: 'image/jpg')
brussels-sprout.user = eri
brussels-sprout.save

puts 'creating korean fried chicken...'
korean-fried-chicken = Meal.new(
  name: "Korean Fried Chicken",
  category: "Side",
  cuisine: "Korean",
  details: "Nicknamed “candy chicken,” Korean fried chicken is known for its addictively crunchy exterior and its thick sweet-and-spicy sauce.",
  portions: 4,
  diet: "Carnivore",
  allergens: 'egg', 'wheat', 'chili',
  expiry: "2022-09-12",
  address: "Erzbergerplatz 16, 50733 Cologne"
)
file13 = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/singleimagebug-korean-fried-chicken-1549305127.jpg?crop=1xw:0.9453781512605042xh;center,top&resize=980:*")
korean-fried-chicken.photos.attach(io: file13, filename: 'korean-fried-chicken', content_type: 'image/jpg')
korean-fried-chicken.user = natalia
korean-fried-chicken.save

puts 'creating beef Bourguignon...'
beef-b = Meal.new(
  name: "Beef Bourguignon",
  category: "stew",
  cuisine: "Dutch",
  details: "Here is how I made it: Here's the basic rundown of this labor of love: Sauté bacon, sear beef in bacon fat (yum!), add veggies and stir to coat with flour, add wine and broth, transfer to oven, bake until beef is super-tender, make Julia Child proud.",
  portions: 4,
  diet: "Carnivore",
  allergens: 'egg', 'wheat', 'chili',
  expiry: "2022-09-13",
  address: "Appellhofplatz 16, 50667 Cologne"
)
file14 = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190828-beef-bourguignon-0154-portrait-pf-1568132096.jpg?crop=1xw:0.9994736842105263xh;center,top&resize=768:*&keepGifs=1")
beef-b.photos.attach(io: file14, filename: 'beef-b', content_type: 'image/jpg')
beef-b.user = william
beef-b.save

puts 'creating creamy vegan pasta...'
creamy-pasta = Meal.new(
  name: "Creamy Vegan Pasta",
  category: "Pasta",
  cuisine: "World",
  details: "I love putting vegetables at the center of my plate – not only is it good for my health and for the world, but it’s also downright delicious. I would be happy to share my newest creation with you.",
  portions: 3,
  diet: "Vegan",
  allergens: 'wheat'
  expiry: "2022-09-13",
  address: "Rheingasse 15, 50676 Cologne"
)
file15 = URI.open("https://cdn.loveandlemons.com/wp-content/uploads/2019/12/vegan-recipes.jpg")
creamy-pasta.photos.attach(io: file15, filename: 'creamy-pasta', content_type: 'image/jpg')
creamy-pasta.user = diego
creamy-pasta.save

puts 'creating Zucchini Fritters...'
zucchini-fritters = Meal.new(
  name: "Zucchini Fritters",
  category: "Baked and Stuffed",
  cuisine: "Dutch",
  details: "I created this meals with homegrown zucchinis. Super delicious!",
  portions: 1,
  diet: "Vegan",
  allergens: '',
  expiry: "2022-09-11",
  address: "Leonhard-Tietz-Straße 8, 50676 Cologne"
)
file16 = URI.open("https://www.thespruceeats.com/thmb/LzlC4zHWABM91kFC76Zl6RAZqkk=/3244x2433/smart/filters:no_upscale()/zucchinifritters-56a5b26b5f9b58b7d0de04f2.jpg")
zucchini-fritters.photos.attach(io: file16, filename: 'zucchini-fritters', content_type: 'image/jpg')
zucchini-fritters.user = diego
zucchini-fritters.save

puts 'creating caribbean tofu...'
caribbean-tofu = Meal.new(
  name: "Caribbean Tofu with Coconut Quinoa",
  category: "Fried",
  cuisine: "Caribbean",
  details: "This Caribbean Tofu with Coconut Quinoa is a great summery treat. Mixing lime and coconut with earthy spices and fiery chillies may just be the best way to carry them into a summer-read savoury dish.",
  portions: 2,
  diet: "Vegan",
  allergens: 'coconut','soy'
  expiry: "2022-09-12",
  address: "Große Telegraphenstraße 34, 50676 Cologne"
)
file17 = URI.open("https://veganuary.com/wp-content/uploads/2016/09/Caribbean-Tofu-2.jpg")
caribbean-tofu.photos.attach(io: file17, filename: 'caribbean-tofu', content_type: 'image/jpg')
caribbean-tofu.user = hai
caribbean-tofu.save

puts 'creating vegan cobbler...'
vegan-cobbler = Meal.new(
  name: "Vegan Brown Butter Peach Cobbler",
  category: "Dessert",
  cuisine: "French",
  details: "Peaches and blueberries get swirled with vegan brown butter and cobbler, making for a cake that’s sticky and caramelized on the outside yet fluffy and tender on the inside.",
  portions: 5,
  diet: "Vegan",
  allergens: 'coconut','soy'
  expiry: "2022-09-14",
  address: "Huhnsgasse 34, 50676 Cologne"
)
file18 = URI.open("https://rainbowplantlife.com/wp-content/uploads/2020/11/peachblueberrrycobbler287of1029.jpg")
vegan-cobbler.photos.attach(io: file18, filename: 'vegan-cobbler', content_type: 'image/jpg')
vegan-cobbler.user = afolabi
vegan-cobbler.save

puts 'creating tuscan chicken rissoles...'
tuscan-chicken = Meal.new(
  name: "Tuscan chicken rissoles",
  category: "Side",
  cuisine: "Italian",
  details: "These creamy Italian chicken mince rissoles would be great over pasta, mash or polenta or served with crusty bread as an easy weeknight dinner",
  portions: 3,
  diet: "Carnivore",
  allergens: 'meat','wheat'
  expiry: "2022-09-14",
  address: "Lothringer Straße 35, 50677 Cologne"
)
file19 = URI.open("https://img.taste.com.au/1KNqPo-z/w720-h480-cfill-q80/taste/2021/10/tuscan-chicken-rissoles-recipe-174147-2.jpg")
tuscan-chicken.photos.attach(io: file19, filename: 'tuscan-chicken', content_type: 'image/jpg')
tuscan-chicken.user = axel
tuscan-chicken.save

puts 'Finished!'
