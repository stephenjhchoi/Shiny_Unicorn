# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # User.destroy_all
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

category1 = Category.create!(title: "restaurant")
category2 = Category.create!(title: "bar")
category3 = Category.create!(title: "cafe")


# 20.times { VenueCategory.create(venue: Venue.all.sample, category: Category.all.sample) }

VenueCategory.create(venue: venue1, category: category1)
VenueCategory.create(venue: venue1, category: category3)
VenueCategory.create(venue: venue2, category: category2)
VenueCategory.create(venue: venue3, category: category1)
VenueCategory.create(venue: venue3, category: category2)
VenueCategory.create(venue: venue4, category: category2)
VenueCategory.create(venue: venue4, category: category3)
VenueCategory.create(venue: venue5, category: category3)

VenueCategory.create(venue: venue6, category: category2)
VenueCategory.create(venue: venue7, category: category1)
VenueCategory.create(venue: venue8, category: category2)
VenueCategory.create(venue: venue9, category: category2)


# # user = User.create!(id: "1", first_name: 'Allison', last_name: 'Grekin', email: 'allison_grekin@hotmail.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/allison.jpg')))
# # user2 = User.create!(id: "2", first_name: 'Stephen', last_name: 'Choi', email: 'stephen.choi@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/stephen.jpeg')))
# # user3 = User.create!(id: "3", first_name: 'Archie', last_name: 'San', email: 'archie.hero@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/archie.jpg')))
# # user4 = User.create!(id: "4", first_name: 'Evan', last_name: 'San', email: 'evan.san@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/evan.png')))
# # user5 = User.create!(id: "5", first_name: 'Remi', last_name: 'San', email: 'remi.san@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/remi.jpg')))

# # d = DateTime.new(2017, 3 , 30, 5, 40, 46, "-06:00")
# # lesson = Lesson.create!(user_id: "1", category: "Cardio", price: "30", start_date_time: d.strftime, duration: "30min", neighborhood:"Chelsea", description: "Cardio exercise is any exercise that raises your heart rate. Face it our bodies were made to move. And we all know that to keep our muscles in shape we need move them.")
# # lesson2 = Lesson.create!(user_id: "2", category: "Yoga", price: "35", start_date_time: d.strftime, duration: "40min", neighborhood:"Knightsbridge", description: "A Hindu spiritual and ascetic discipline, a part of which, including breath control, simple meditation, and the adoption of specific bodily postures, is widely practised for health and relaxation.")
# # lesson3 = Lesson.create!(user_id: "3", category: "Weights", price: "35", start_date_time: d.strftime, duration: "50min", neighborhood:"Shoreditch", description: "The sport or activity of lifting barbells or other heavy weights.")
# # lesson4 = Lesson.create!(user_id: "4", category: "Pilates", price: "25", start_date_time: d.strftime, duration: "30min", neighborhood:"Mayfair", description: "A system of exercises using special apparatus, designed to improve physical strength, flexibility, and posture, and enhance mental awareness.")
# # lesson5 = Lesson.create!(user_id: "5", category: "Boxing", price: "20", start_date_time: d.strftime, duration: "30min", neighborhood:"Chelsea", description: "The sport or practice of fighting with the fists, especially with padded gloves in a roped square ring according to prescribed rules.")

# #     t.string   "address"
# #     t.string   "name"
# #     t.string   "area"
# #     t.string   "category"
# #     t.string   "mood"
# #     t.text     "description"
# #     t.integer  "price"
# #     t.integer  "light_level"
# #     t.integer  "noise_level"
# #     t.integer  "couch_comfort"
# #     t.integer  "staff_level"
# #     t.integer  "unicorn_score"
# #     t.integer  "distance_from_bed"

