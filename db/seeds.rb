require "open-uri"
require "yaml"

# Clear the database
# create 3 @users
# Create the categories

#Create the activities and assign a random category/user

puts "Clearing db..."
User.destroy_all
Category.destroy_all
Booking.destroy_all
Activity.destroy_all

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

require 'date'

Activity.create!(
  name: "Drink a Beer at 't Blauw Theehuis in Vondelpark",
  user: User.all.sample,
  category: hidden_gems,
  location: 'Vondelpark 5, 1071 AA Amsterdam',
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: '29. Explore Java Island',
  user: User.all.sample,
  category: hidden_gems,
  location: "1019 RX Ámsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: 'Plastic Crush',
  user: User.all.sample,
  category: art_and_museums,
  location: "Linnaeusstraat 2, 1092 CK Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: 'Museum Van Gogh',
  user: User.all.sample,
  category: art_and_museums,
  location: "Museumplein 6, 1071 DJ Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: 'Ajax vs. Barcelona',
  user: User.all.sample,
  category: sports,
  location: "Johan Cruijff Boulevard 1, 1100 DL Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: 'Amsterdam AMAZE Immersive Audioxisual Experience',
  user: User.all.sample,
  category: art_and_museums,
  location: "Elementenstraat 25, 1014 AR Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: 'Try Herring',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Nieuwezijds Voorburgwal 200, 1012 RR Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: 'Try local beer at a historic brewery ',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Funenkade 7, 1018 AL Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: 'Catch the free ferry to Amsterdam Noord',
  user: User.all.sample,
  category: food_and_drinks,
  location: "1011 AB Ámsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: "Search for unusual finds at Europe's biggest flea market",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Waterlooplein 2, 1011 NZ Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: "Eat your way around food stalls in a former tram depot",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Hannie Dankbaarpassage 47, 1053 RT AMSTERDAM",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: "24hs Bike Rental",
  user: User.all.sample,
  category: sports,
  location: "Eerste Constantijn Huygensstraat 88, 1054 BX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: "The Maker Market",
  user: User.all.sample,
  category: events,
  location: "Hannie Dankbaarpassage 39, 1053 RT Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)

Activity.create!(
  name: "Vintage art and design market in Posthoornkerk",
  user: User.all.sample,
  category: events,
  location: "Haarlemmerstraat 124-126, 1013 EX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now,
  price: 10
)
