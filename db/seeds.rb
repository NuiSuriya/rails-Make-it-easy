require "open-uri"
require "yaml"

# Clear the database
# create 3 @users
# Create the categories

#Create the activities and assign a random category/user

puts "Clearing db..."
User.destroy_all
Category.destroy_all

puts "Creating users..."
User.create!(username: 'nico', email: 'nico@gmail.com', password: '123456')
User.create!(username: 'nui', email: 'nui@gmail.com', password: '123456')
User.create!(username: 'hakan', email: 'hakan@gmail.com', password: '123456')

puts "Creating categories..."
sports = Category.create!(name: 'Sports', sub_category: 'group sport')
events = Category.create!(name: 'Concerts', sub_category: 'rock music')
hidden_gems = Category.create!(name: 'Hidden Gems', sub_category: '')
art_and_museums = Category.create!(name: 'Art and Museums', sub_category: '')
food_and_drinks = Category.create!(name: 'Food & drinks', sub_category: '')

puts "Creating activities..."
Activity.create!(name: "Drink a Beer at 't Blauw Theehuis in Vondelpark", user: User.all.sample, category: hidden_gems)
Activity.create!(name: '29. Explore Java Island', user: User.all.sample, category: hidden_gems)
Activity.create!(name: 'Plastic Crush', user: User.all.sample, category: art_and_museums)
Activity.create!(name: 'Museum Van Gogh', user: User.all.sample, category: art_and_museums)
Activity.create!(name: 'Ajax vs. Barcelona', user: User.all.sample, category: sports)
Activity.create!(name: 'Amsterdam AMAZE Immersive Audioxisual Experience', user: User.all.sample, category: art_and_museums)
Activity.create!(name: 'Try Herring', user: User.all.sample, category: food_and_drinks)
Activity.create!(name: 'Try local beer at a historic brewery ', user: User.all.sample, category: food_and_drinks)
Activity.create!(name: 'Catch the free ferry to Amsterdam Noord', user: User.all.sample, category: food_and_drinks)
Activity.create!(name: "Search for unusual finds at Europe's biggest flea market", user: User.all.sample, category: food_and_drinks)
Activity.create!(name: "Eat your way around food stalls in a former tram depot", user: User.all.sample, category: food_and_drinks)
Activity.create!(name: "24hs Bike Rental", user: User.all.sample, category: sports)
Activity.create!(name: "The Maker Market", user: User.all.sample, category: events)
Activity.create!(name: "Vintage art and design market in Posthoornkerk", user: User.all.sample, category: events)
