require "open-uri"
require "yaml"

# Clear the database
# create 3 @users
# Create the categories
# Create the activities and assign a random category/user

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
  image_url: "https://cdn2.civitatis.com/paises-bajos/amsterdam/guia/vondelpark.jpg",
  name: "Drink a Beer at 't Blauw Theehuis in Vondelpark",
  user: User.all.sample,
  category: hidden_gems,
  location: 'Vondelpark 5, 1071 AA Amsterdam',
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 0
)

Activity.create!(
  image_url: "https://www.intrepidtravel.com/adventures/wp-content/uploads/2018/10/shutterstock_715724317-e1539730002608.jpg",
  name: '29. Explore Java Island',
  user: User.all.sample,
  category: hidden_gems,
  location: "1019 RX Ámsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://www.kijkopnoord-holland.nl/wp-content/uploads/2022/04/tropenmuseum.jpg",
  name: 'Plastic Crush',
  user: User.all.sample,
  category: art_and_museums,
  location: "Linnaeusstraat 2, 1092 CK Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEU6RWvaSXVQPNAwCQQxZs4WyZpyRH3uEHKQ&usqp=CAU",
  name: 'Museum Van Gogh',
  user: User.all.sample,
  category: art_and_museums,
  location: "Museumplein 6, 1071 DJ Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFSVLvzulzfv6YdXEQcZ6w6cG3DT7sh-wBdA&usqp=CAU",
  name: 'Ajax vs. Barcelona',
  user: User.all.sample,
  category: sports,
  location: "Johan Cruijff Boulevard 1, 1100 DL Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRincit_A5gDFgbh6Gy9DJyOvCakKZudM0Q9w&usqp=CAU",
  name: 'Amsterdam AMAZE Immersive Audioxisual Experience',
  user: User.all.sample,
  category: art_and_museums,
  location: "Elementenstraat 25, 1014 AR Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYsn7jDNGt9vU71sO-kEvL_zx58Ep88gdkgQ&usqp=CAU",
  name: 'Try Herring',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Nieuwezijds Voorburgwal 200, 1012 RR Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://www.iamsterdam.com/media/blog/posts-nl/2019/noordzuid-hotspots/walhalla.jpg?w=977",
  name: 'Try local beer at a historic brewery ',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Funenkade 7, 1018 AL Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://i.ytimg.com/vi/RAlZEzzVtzk/mqdefault.jpg",
  name: 'Catch the free ferry to Amsterdam Noord',
  user: User.all.sample,
  category: food_and_drinks,
  location: "1011 AB Ámsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://www.ndsm.nl/wp-content/uploads/2021/04/img64.jpg",
  name: "Search for unusual finds at Europe's biggest flea market",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Waterlooplein 2, 1011 NZ Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://www.stylist.co.uk/images/app/uploads/2018/02/22093513/wochenmarkt-1317-operner-crop-1519293394-1680x880.jpg?w=1680&h=880&fit=max&auto=format%2Ccompress",
  name: "Eat your way around food stalls in a former tram depot",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Hannie Dankbaarpassage 47, 1053 RT AMSTERDAM",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://interparkingwebbeheer.nl/app/uploads/sites/7/2020/02/12832585_956793667739268_353196518327338397_n.png",
  name: "24hs Bike Rental",
  user: User.all.sample,
  category: sports,
  location: "Eerste Constantijn Huygensstraat 88, 1054 BX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://media.iamsterdam.com/ff/api/assets/5fd280c89ba7fe3e0c6fd3b8/The-20Maker-20Market-2009-20--20photo-20by-20Eva-20Leget.jpg",
  name: "The Maker Market",
  user: User.all.sample,
  category: events,
  location: "Hannie Dankbaarpassage 39, 1053 RT Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)

Activity.create!(
  image_url: "https://stadsherstel.nl/wp-content/uploads/2020/04/agenda-antiekmarkt-gerrit-alink-01.jpg",
  name: "Vintage art and design market in Posthoornkerk",
  user: User.all.sample,
  category: events,
  location: "Haarlemmerstraat 124-126, 1013 EX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
