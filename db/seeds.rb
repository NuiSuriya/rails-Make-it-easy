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

file1 = URI.open("https://cdn2.civitatis.com/paises-bajos/amsterdam/guia/vondelpark.jpg")
file2 = URI.open("https://www.tasteofhome.com/wp-content/uploads/2019/03/shutterstock_1169910928-cheers-horizontal.jpg")
file3 = URI.open("https://static.dw.com/image/16095847_605.jpg")
activity = Activity.create!(
  name: "Drink a Beer at 't Blauw Theehuis in Vondelpark",
  user: User.all.sample,
  category: hidden_gems,
  location: 'Vondelpark 5, 1071 AA Amsterdam',
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 0
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://www.intrepidtravel.com/adventures/wp-content/uploads/2018/10/shutterstock_715724317-e1539730002608.jpg")
file2 = URI.open("https://uploads-ssl.webflow.com/576fd5a8f192527e50a4b95c/6111137fe091a37015f073b2_Java%20Indonesia_result.jpg")
file3 = URI.open("https://uploads-ssl.webflow.com/576fd5a8f192527e50a4b95c/5da5b2c50608e668ee0fa073_java%20indonesia.jpg")
activity = Activity.create!(
  name: 'Explore Java Island',
  user: User.all.sample,
  category: hidden_gems,
  location: "1019 RX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://www.tropenmuseum.nl/sites/default/files/styles/teaser_/public/Ontwerper%20Jie%20Chen%20in%20het%20depot%20van%20het%20Tropenmuseum%20in%20Amsterdam.%C2%A0Foto%20Tropenmuseum.webp?itok=W9uhNdm7")
file2 = URI.open("https://www.tropenmuseum.nl/sites/default/files/styles/teaser/public/plasticc.jpg?h=bca18991&itok=3xs22aif")
file3 = URI.open("https://www.iamsterdam.com/media/agenda/nieuw-deze-maand/nieuw-in-november-2022/exposities/flory-sinanduky-pakvanspuiten.jpg?w=977")
activity = Activity.create!(
  name: 'Plastic Crush',
  user: User.all.sample,
  category: art_and_museums,
  location: "Linnaeusstraat 2, 1092 CK Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEU6RWvaSXVQPNAwCQQxZs4WyZpyRH3uEHKQ&usqp=CAU")
Activity.create!(
  name: 'Museum Van Gogh',
  user: User.all.sample,
  category: art_and_museums,
  location: "Museumplein 6, 1071 DJ Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFSVLvzulzfv6YdXEQcZ6w6cG3DT7sh-wBdA&usqp=CAU")
Activity.create!(
  name: 'Ajax vs. Barcelona',
  user: User.all.sample,
  category: sports,
  location: "Johan Cruijff Boulevard 1, 1100 DL Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRincit_A5gDFgbh6Gy9DJyOvCakKZudM0Q9w&usqp=CAU")
Activity.create!(
  name: 'Amsterdam AMAZE Immersive Audioxisual Experience',
  user: User.all.sample,
  category: art_and_museums,
  location: "Elementenstraat 25, 1014 AR Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYsn7jDNGt9vU71sO-kEvL_zx58Ep88gdkgQ&usqp=CAU")
Activity.create!(
  name: 'Try Herring',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Nieuwezijds Voorburgwal 200, 1012 RR Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://www.iamsterdam.com/media/blog/posts-nl/2019/noordzuid-hotspots/walhalla.jpg?w=977")
Activity.create!(
  name: 'Try local beer at a historic brewery ',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Funenkade 7, 1018 AL Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://i.ytimg.com/vi/RAlZEzzVtzk/mqdefault.jpg")
Activity.create!(
  name: 'Catch the free ferry to Amsterdam Noord',
  user: User.all.sample,
  category: food_and_drinks,
  location: "1011 AB Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://www.ndsm.nl/wp-content/uploads/2021/04/img64.jpg")
Activity.create!(
  name: "Search for unusual finds at Europe's biggest flea market",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Waterlooplein 2, 1011 NZ Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://www.stylist.co.uk/images/app/uploads/2018/02/22093513/wochenmarkt-1317-operner-crop-1519293394-1680x880.jpg?w=1680&h=880&fit=max&auto=format%2Ccompress")
Activity.create!(
  name: "Eat your way around food stalls in a former tram depot",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Hannie Dankbaarpassage 47, 1053 RT AMSTERDAM",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://interparkingwebbeheer.nl/app/uploads/sites/7/2020/02/12832585_956793667739268_353196518327338397_n.png")
Activity.create!(
  name: "24hs Bike Rental",
  user: User.all.sample,
  category: sports,
  location: "Eerste Constantijn Huygensstraat 88, 1054 BX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://media.iamsterdam.com/ff/api/assets/5fd280c89ba7fe3e0c6fd3b8/The-20Maker-20Market-2009-20--20photo-20by-20Eva-20Leget.jpg")
Activity.create!(
  name: "The Maker Market",
  user: User.all.sample,
  category: events,
  location: "Hannie Dankbaarpassage 39, 1053 RT Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://stadsherstel.nl/wp-content/uploads/2020/04/agenda-antiekmarkt-gerrit-alink-01.jpg")
Activity.create!(
  name: "Vintage art and design market in Posthoornkerk",
  user: User.all.sample,
  category: events,
  location: "Haarlemmerstraat 124-126, 1013 EX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!
