User.destroy_all
Venue.destroy_all
Category.destroy_all

venue1 = Venue.create!(name: 'Bodega Negra', address: '16 Moor St, Soho, London W1D 5NH', area: 'Soho', mood: 'fun', description: 'Mexican food in light upstairs cafe and hacienda-style cellar restaurant with lengthy tequila menu', price: '3', light_level: '3', noise_level: '7', couch_comfort: '4', staff_level: '6', unicorn_score: '8', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/bodega.png')))
venue2 = Venue.create!(name: 'Barts', address: 'Chelsea Cloisters, 87 Sloane Ave, Chelsea, London SW3 3DW', area: 'Chelsea', mood: 'seductive', description: 'Speakeasy cocktail bar with quirky wall ornaments and dressing-up boxes, plus vintage afternoon tea.', price: '2', light_level: '3', noise_level: '8', couch_comfort: '7', staff_level: '9', unicorn_score: '9', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/barts.png')))
venue3 = Venue.create!(name: 'Evans & Peel Detective Agency', address: '310c Earls Ct Rd, Kensington, London SW5 9BA', area: 'Kensington', mood: 'adventurous', description: 'Evans and Peel Detective Agency in London is a speakeasy bar and restaurant in Earls Court that serves up a 1920s prohibition drinking and eating experience', price: '2', light_level: '5', noise_level: '3', couch_comfort: '5', staff_level: '8', unicorn_score: '10', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/detective.png')))
venue4 = Venue.create!(name: 'Bar 212', address: '212 Brick Ln, London E1 6SA', area: 'Shoreditch', mood: 'chill', description: 'The 212 Café & Bar is a hangout for music, food and art lovers', price: '2', light_level: '3', noise_level: '7', couch_comfort: '8', staff_level: '6', unicorn_score: '8', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/bar212.png')))
venue5 = Venue.create!(name: 'Daisy Green', address: '20 Seymour St, Marylebone, London W1H 7HX', area: 'Marylebone', mood: 'chill', description: 'Artisan coffee, gourmet frozen yogurt and healthy bites in a quirky, vibrant cafe with grass carpet.', price: '2', light_level: '9', noise_level: '4', couch_comfort: '4', staff_level: '8', unicorn_score: '8', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/daiseygreen.png')))

venue6 = Venue.create!(name: 'The Cocktail Trading Company', address: '68, Bethnal Green Rd, London E1 6GQ', area: 'Shoreditch', mood: 'seductive', description: 'Cocktail bar that just gets it right. Perfect spot to lounge in comfy sofas while enjoying creative cocktails.', price: '2', light_level: '2', noise_level: '2', couch_comfort: '8', staff_level: '9', unicorn_score: '9', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/cocktailtrading.png')))
venue7 = Venue.create!(name: "Bill's Shoreditch Restaurant", address: '1 Hoxton Square, London N1 6NU', area: 'Shoreditch', mood: 'classy', description: 'Contemporary European chain dishing up separate breakfast, afternoon tea, lunch and dinner menus.', price: '2', light_level: '8', noise_level: '5', couch_comfort: '4', staff_level: '7', unicorn_score: '7', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/bills.png')))
venue8 = Venue.create!(name: 'Nightjar', address: '129 City Rd, London EC1V 1JB', area: 'Shoreditch', mood: 'chill', description: 'Speakeasy-style subterranean bar with live jazz and blues, for cocktails and rare spirits.', price: '2', light_level: '3', noise_level: '4', couch_comfort: '7', staff_level: '8', unicorn_score: '8', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/nightjar.png')))
venue9 = Venue.create!(name: 'Ninetyeight Bar and Lounge', address: 'Morrell House, 98 Curtain Rd, Shoreditch, London EC2A 3AF', area: 'Shoreditch', mood: 'adventurous', description: 'Zebra prints, lavish colorful fittings and Victoriana lend this cocktail bar a fairy tale vibe.', price: '2', light_level: '3', noise_level: '4', couch_comfort: '7', staff_level: '8', unicorn_score: '8', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/ninetyeight.png')))
venue10 = Venue.create!(name: 'Brewdog Shoreditch', address: '51-55 Bethnal Green Rd, London E1 6LA', area: 'Shoreditch', mood: 'fun', description: "Fun bar specializing in Scottish brewery's craft beers, with regular guest brews.", price: '2', light_level: '7', noise_level: '6', couch_comfort: '3', staff_level: '6', unicorn_score: '8', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/brewdog.png')))
venue11 = Venue.create!(name: 'Ace Hotel London Shoreditch', address: '100 Shoreditch High St, London E1 6JQ', area: 'Shoreditch', mood: 'fun', description: "Sleek bar, cafe, and restaurant all packed into one fun hotel.", price: '2', light_level: '3', noise_level: '7', couch_comfort: '5', staff_level: '7', unicorn_score: '7', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/acehotel.png')))
venue12 = Venue.create!(name: 'WeWork Moorgate', address: '1 Fore St, London EC2Y 9DT', area: 'Shoreditch', mood: 'fun', description: "Cool & Techy co-working space.", price: '2', light_level: '4', noise_level: '5', couch_comfort: '10', staff_level: '7', unicorn_score: '9', distance_from_bed: '', photo: File.open(Rails.root.join('app/assets/images/wework.png')))


category1 = Category.create!(title: "restaurant")
category2 = Category.create!(title: "bar")
category3 = Category.create!(title: "cafe")

# 20.times { VenueCategory.create!(venue: Venue.all.sample, category: Category.all.sample) }

VenueCategory.create!(venue: venue1, category: category1)
VenueCategory.create!(venue: venue1, category: category2)
VenueCategory.create!(venue: venue2, category: category2)
VenueCategory.create!(venue: venue3, category: category1)
VenueCategory.create!(venue: venue3, category: category2)
VenueCategory.create!(venue: venue4, category: category2)
VenueCategory.create!(venue: venue4, category: category3)
VenueCategory.create!(venue: venue5, category: category3)
VenueCategory.create!(venue: venue6, category: category2)
VenueCategory.create!(venue: venue7, category: category1)
VenueCategory.create!(venue: venue8, category: category2)
VenueCategory.create!(venue: venue9, category: category2)
VenueCategory.create!(venue: venue10, category: category2)
VenueCategory.create!(venue: venue11, category: category1)
VenueCategory.create!(venue: venue11, category: category2)
VenueCategory.create!(venue: venue11, category: category3)

Unicorn.create!(name: 'Baby Unicorn', levelup_point: 1, photo: File.open(Rails.root.join('app/assets/images/babyunicorn.png')))
Unicorn.create!(name: 'Cool Unicorn', levelup_point: 1, photo: File.open(Rails.root.join('app/assets/images/coolunicorn.png')))
Unicorn.create!(name: 'Badass Unicorn', levelup_point: 2, photo: File.open(Rails.root.join('app/assets/images/badassunicorn.png')))
Unicorn.create!(name: 'Master Unicorn', levelup_point: 4, photo: File.open(Rails.root.join('app/assets/images/masterunicorn.png')))

user_main = User.create!(first_name: 'Stephen', last_name: 'Choi', email: 'stephenjhchoi@gmail.com', password:'123456', password_confirmation: '123456')

user1 = User.create!(first_name: 'Remi', last_name: 'Takalove', email: 'remi@gmail.com', password:'123456', password_confirmation: '123456')
4.times{user1.earn_point}

user2 = User.create!(first_name: 'Evan', last_name: 'Thomas', email: 'evan@gmail.com', password:'123456', password_confirmation: '123456')
3.times{user2.earn_point}

user3 = User.create!(first_name: 'Ugo', last_name: 'Marrr', email: 'ugo@gmail.com', password:'123456', password_confirmation: '123456')
3.times{user3.earn_point}

user4 = User.create!(first_name: 'Allison', last_name: 'Greks', email: 'allison@gmail.com', password:'123456', password_confirmation: '123456')
2.times{user4.earn_point}

user5 = User.create!(first_name: 'Antonini', last_name: 'Limatino', email: 'antonini@gmail.com', password:'123456', password_confirmation: '123456')

user6 = User.create!(first_name: 'Joy', last_name: 'Angry', email: 'joy@gmail.com', password:'123456', password_confirmation: '123456')
2.times{user6.earn_point}

user7 = User.create!(first_name: 'Archae', last_name: 'Gilbear', email: 'archae@gmail.com', password:'123456', password_confirmation: '123456')
4.times{user7.earn_point}

user8 = User.create!(first_name: 'Teddae', last_name: 'Bear', email: 'teddae@gmail.com', password:'123456', password_confirmation: '123456')
3.times{user8.earn_point}

User.create!(first_name: 'Cat', last_name: 'Aat', email: 'cat@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Katie', last_name: 'Batie', email: 'katie@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Josh', last_name: 'Cosh', email: 'josh@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Ed', last_name: 'Dd', email: 'ed@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Kit', last_name: 'Fit', email: 'kit@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Ralph', last_name: 'Ealph', email: 'ralph@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Harry', last_name: 'Karry', email: 'harry@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Fahad', last_name: 'Eahad', email: 'fahad@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Arthur', last_name: 'Arthur', email: 'arthur@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Romain', last_name: 'Pomain', email: 'romain@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Boris', last_name: 'Doris', email: 'boris@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Sandrine', last_name: 'Fandrine', email: 'sandrine@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Elissa', last_name: 'Qlissa', email: 'elissa@gmail.com', password:'123456', password_confirmation: '123456')
User.create!(first_name: 'Nikolei', last_name: 'Kikolei', email: 'nikolei@gmail.com', password:'123456', password_confirmation: '123456')

Review.create!(venue: venue9, user: user1, hotness_level: 5, description: "Zebra prints, ponies, black leather and white fluffy fur sofas. What more can you ask? I don't want my mates to find out about this amazing venue ;)")
Review.create!(venue: venue9, user: user2, hotness_level: 5, description: "Hands down my favorite date spot in London. I can’t believe I found out about this just now. Words don’t do justice...")
Review.create!(venue: venue9, user: user3, hotness_level: 5, description: "VUYBE amplifer! Whatever you’re feeling, come here and it will set you on the right path. ")
Review.create!(venue: venue9, user: user4, hotness_level: 5, description: "Thursday night ended up at ninety eight. Saturday night came back again. Today? I’m going back there.")
Review.create!(venue: venue9, user: user5, hotness_level: 5, description: "Hidden doors and secret rooms. Nuff said!")
Review.create!(venue: venue9, user: user6, hotness_level: 5, description: "Adventurous atmosphere out of control :)")
Review.create!(venue: venue9, user: user7, hotness_level: 5, description: "Why have I just found this amazing spot?!")



Spot.create!(photo: File.open(Rails.root.join('app/assets/images/couchbodega.png')), name: "Comfy Couch - Available for Drinks and/or Dinner", venue: venue1)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/fireplace.png')), name: "Comfy Spot by the fireplace", venue: venue1)

Spot.create!(photo: File.open(Rails.root.join('app/assets/images/ctrading_spot.png')), name: "Comfy leather sofas in the intimate corner", venue: venue6)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/bills_spot.png')), name: "Cozy leather sofa in the secluded corner", venue: venue7)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/nightjar_spot.png')), name: "Intimate spot with comfy leather sofa", venue: venue8)

Spot.create!(photo: File.open(Rails.root.join('app/assets/images/furry_spot.png')), name: "Furry sofas with furry pillows", venue: venue9)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/piano_spot.png')), name: "Piano spot with jungle vibes", venue: venue9)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/unicorn_spot.png')), name: "Cozy sofa by a cheeky pony", venue: venue9)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/white_room.png')), name: "Intimate white room", venue: venue9)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/zebra_spot.png')), name: "Adventurous zebra leathery spot", venue: venue9)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/weworkcouch.png')), name: "Squishy leather sofa with edgy pillows", venue: venue12)
Spot.create!(photo: File.open(Rails.root.join('app/assets/images/weworkcouch2.png')), name: "Sensory illusionary wall with comfy sofa", venue: venue12)


