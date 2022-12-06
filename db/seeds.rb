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

file = URI.open("https://dmtupqacnn63x.cloudfront.net/original_images/Contentpagina_Fitness_-_header_nieuw_def.jpg")
sports = Category.create!(
  name: 'Sports',
  sub_category: 'group sport'
)
sports.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sports.save!

file = URI.open("https://blog.topcv.vn/wp-content/uploads/2021/07/sk2uEvents_Page_Header_2903ed9c-40c1-4f6c-9a69-70bb8415295b.jpg")
events = Category.create!(
  name: 'Events',
  sub_category: 'rock music'
)
events.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
events.save!

file = URI.open("https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/idd913a6c73d21858/version/1586184025/best-hidden-gems-in-europe-eguisheim-copyright-boris-stroujko-european-best-destinations.jpg")
hidden_gems = Category.create!(
  name: 'Hidden Gems',
  sub_category: ''
)
hidden_gems.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
hidden_gems.save!

file = URI.open("https://media.cntraveler.com/photos/5b47a08d4b1b564ac0e61d6c/16:9/w_2560,c_limit/Museum-of-Fine-Arts,-Boston__2018_MFA-Boston_Koch-Gallery.jpg")
art_and_museums = Category.create!(
  name: 'Art and Museums',
  sub_category: ''
)
art_and_museums.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
art_and_museums.save!

file = URI.open("https://post.healthline.com/wp-content/uploads/2020/08/friends-eating-and-drinking-together-thumb-732x549.jpg")
food_and_drinks = Category.create!(
  name: 'Food & drinks',
  sub_category: ''
)
food_and_drinks.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
food_and_drinks.save!

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
  description: 'Taproom ‘t Blauwe Theehuis is located in the middle of the Vondelpark. Enjoy the Amsterdam vibe on our sun-drenched terrace.',
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
  description: "Java is one of the Indonesian islands that's gaining popularity for it's amazing volcanoes, fantastic temples and breathtaking landscapes.",
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
  description: 'The exhibition shows the different ways people around the world live with plastic. Global and local stories, objects from the museum’s collection, contemporary art and plastic icons are all linked to the global systems that introduced and spread the material.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEU6RWvaSXVQPNAwCQQxZs4WyZpyRH3uEHKQ&usqp=CAU")
file2 = URI.open("https://media.tacdn.com/media/attractions-splice-spp-674x446/06/fb/63/e0.jpg")
file3 = URI.open("https://withlocals-com-res.cloudinary.com/image/upload/c_fill,f_auto,fl_progressive,g_auto,q_auto,w_500/dc381f07fbf43d277fc1bf1782f4a97b")
activity = Activity.create!(
  name: 'Museum Van Gogh',
  user: User.all.sample,
  category: art_and_museums,
  location: "Museumplein 6, 1071 DJ Amsterdam",
  description: 'The Van Gogh Museum in Amsterdam houses the largest collection of artworks by Vincent van Gogh (1853-1890) in the world.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFSVLvzulzfv6YdXEQcZ6w6cG3DT7sh-wBdA&usqp=CAU")
file2 = URI.open("https://vi.cdn.pxr.nl/.imaging/mte/vinl-website-theme/760x506/dam/articles/2022/12/06/copyright-proshots-11153277-1.jpg/jcr:content/copyright-proshots-11153277-1.jpg")
file3 = URI.open("https://assets.bwbx.io/images/users/iqjWHBFdfxIU/ioGcqaukZTJ0/v1/1200x-1.jpg")
activity = Activity.create!(
  name: 'Ajax vs. Barcelona',
  user: User.all.sample,
  category: sports,
  location: "Johan Cruijff Boulevard 1, 1100 DL Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRincit_A5gDFgbh6Gy9DJyOvCakKZudM0Q9w&usqp=CAU")
file2 = URI.open("https://amaze-amsterdam.nl/wp-content/uploads/2021/05/2000x1200_07.jpg")
file3 = URI.open("https://www.wander-lust.nl/wp-content/uploads/2021/09/AMAZE-lasers-Immersive-experience.jpg")
activity = Activity.create!(
  name: 'Amsterdam AMAZE Immersive Audioxisual Experience',
  user: User.all.sample,
  category: art_and_museums,
  location: "Elementenstraat 25, 1014 AR Amsterdam",
  description: '30 years in the making: Amaze is an immersive experience, a true audio-visual playground, in which the pioneers of Dutch dance combined their powers into the experience of a lifetime.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYsn7jDNGt9vU71sO-kEvL_zx58Ep88gdkgQ&usqp=CAU")
file2 = URI.open("https://www.iamexpat.nl/sites/default/files/styles/ogimage_thumb/public/woman-eating-herring.jpg")
file3 = URI.open("https://media.istockphoto.com/id/841515432/photo/harring-traditional-snack-in-netherland.jpg?s=612x612&w=0&k=20&c=hvV7PPYTL8M-y2CU4sYiBZSVCu5EwNozq7-08UeXm_k=")
activity = Activity.create!(
  name: 'Try Herring',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Nieuwezijds Voorburgwal 200, 1012 RR Amsterdam",
  description: "Dutch Herring is a popular food in Amsterdam — here's how to enjoy!",
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://www.iamsterdam.com/media/blog/posts-nl/2019/noordzuid-hotspots/walhalla.jpg?w=977")
file2 = URI.open("https://www.iamsterdam.com/media/locations-ndtrc/bars-cafes/brouwerij-kleiburg-amsterdam.jpg?w=977")
file3 = URI.open("https://amsterdamheritageguide.nl/wp-content/uploads/2020/08/Beer-brewn-in-Amsterdam-1200x675.jpg")
activity = Activity.create!(
  name: 'Try local beer at a historic brewery ',
  user: User.all.sample,
  category: food_and_drinks,
  location: "Funenkade 7, 1018 AL Amsterdam",
  description: "Get a taste of history at Poesiat & Kater, a brewery located in a historic location in Amsterdam-Oost with a tasting room that's just as charming.",
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://i.ytimg.com/vi/RAlZEzzVtzk/mqdefault.jpg")
file2 = URI.open("https://media.cntraveler.com/photos/5b05c23c7f70e97cf7c0deab/16:9/w_2560,c_limit/Amsterdam-Ferry_GettyImages-584841674.jpg")
file3 = URI.open("https://www.iamsterdam.com/media/transportation-and-schiphol/ferry-ij.jpg")
activity = Activity.create!(
  name: 'Catch the free ferry to Amsterdam Noord',
  user: User.all.sample,
  category: food_and_drinks,
  location: "1011 AB Amsterdam",
  description: "Amsterdam's free ferry system is an essential part of the city's transportation system.",
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://www.ndsm.nl/wp-content/uploads/2021/04/img64.jpg")
file2 = URI.open("https://saveatrain-12e85.kxcdn.com/blog/wp-content/uploads/2020/12/donatella-d-anniballe-1Q6qGGBduY4-unsplash.jpg")
file3 = URI.open("https://ijhallen.nl/en/media/lr/hr_main_info_bg2.jpg")
activity = Activity.create!(
  name: "Search for unusual finds at Europe's biggest flea market",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Waterlooplein 2, 1011 NZ Amsterdam",
  description: 'If you are passionate about shopping, and especially vintage collectibles, then these 7 best flea markets in Europe will be a dream for you.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://www.stylist.co.uk/images/app/uploads/2018/02/22093513/wochenmarkt-1317-operner-crop-1519293394-1680x880.jpg?w=1680&h=880&fit=max&auto=format%2Ccompress")
file2 = URI.open("https://www.iamsterdam.com/media/neighbourhoods/oud-west/foodhallen-diners-amsterdam-marie-charlotte-peze.jpg?h=1020&w=1800&la=en")
file3 = URI.open("https://www.amsterdamsights.com/eatdrink/img/foodhallen-00.jpg")
activity = Activity.create!(
  name: "Eat your way around food stalls in a former tram depot",
  user: User.all.sample,
  category: food_and_drinks,
  location: "Hannie Dankbaarpassage 47, 1053 RT Amsterdam",
  description: 'An indoor food court - inspired by Torvehallerne in Copenhague, Mercado de San Miguel in Madrid and the Borough Market in London - that consists of a large hall with over 20 different stall restaurants.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://interparkingwebbeheer.nl/app/uploads/sites/7/2020/02/12832585_956793667739268_353196518327338397_n.png")
file2 = URI.open("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/2a/88/0d.jpg")
file3 = URI.open("https://www.iamsterdam.com/media/bikes/yellowbike-tour-amsterdam-17juni2010-edwin-van-eis.jpg")
activity = Activity.create!(
  name: "24hs Bike Rental",
  user: User.all.sample,
  category: sports,
  location: "Eerste Constantijn Huygensstraat 88, 1054 BX Amsterdam",
  description: 'Rent a handbrake or footbrake bike and explore Amsterdam at your own pace!',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://media.iamsterdam.com/ff/api/assets/5fd280c89ba7fe3e0c6fd3b8/The-20Maker-20Market-2009-20--20photo-20by-20Eva-20Leget.jpg")
file2 = URI.open("https://cdn.webshopapp.com/shops/269941/files/282402806/mm05-18.jpg")
file3 = URI.open("https://www.iamsterdam.com/media/fotosartikelen/verity/oud-west/maker-markt-de-hallen-1800x1020.jpg?w=977")
activity = Activity.create!(
  name: "The Maker Market",
  user: User.all.sample,
  category: events,
  location: "Hannie Dankbaarpassage 39, 1053 RT Amsterdam",
  description: 'The Maker Market is the perfect place to meet young, innovative makers and brands from all around the world, find locally produced and/or designed products and tokens of true craftsmanship.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!

file1 = URI.open("https://stadsherstel.nl/wp-content/uploads/2020/04/agenda-antiekmarkt-gerrit-alink-01.jpg")
file2 = URI.open("https://stadsherstel.nl/wp-content/uploads/2020/03/posthoornkerk_beurs.jpg")
file3 = URI.open("https://stadsherstel.nl/wp-content/uploads/2020/03/slider-posthoorn-broccante.jpg")
activity = Activity.create!(
  name: "Vintage art and design market in Posthoornkerk",
  user: User.all.sample,
  category: events,
  location: "Haarlemmerstraat 124-126, 1013 EX Amsterdam",
  description: 'Amazing Event. The MUST thing to do.',
  date: Date.today,
  time: Time.now + (3600*5),
  price: 10
)
activity.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
activity.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
activity.save!
