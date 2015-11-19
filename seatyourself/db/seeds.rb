# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# SCHEMA
# create_table "restaurants", force: :cascade do |t|
#     t.string   "name"
#     t.string   "address"
#     t.string   "phone_number"
#     t.string   "type_of_cuisine"
#     t.integer  "user_id"
#     t.datetime "created_at",      null: false
#     t.datetime "updated_at",      null: false
#   end

	# categories = [
	#   "Pub Food",
	#   "Italian",
	#   "Sushi",
	#   "Fine Dining",
	#   "Pizza",
	#   "Chinese",
	#   "Mexican"
	# ]

	# categories.each do |name|
	#   Category.create(:name => name)
	# end

# BEGIN FAKER FOR RANDOM GENERATED RESTAURANTS

	# restaurant = 100.times do |n|
		
	# 	    name = Faker::Company.name
	# 	    address = {Faker::Address.street_address, Faker::Address.street_suffix, Faker::Address.city}
	# 		phone_number = Faker::PhoneNumber.phone_number
	# 	end
	# 	}




100.times do 
 
  Restaurant.create(
	  name: Faker::Company.name,
	  address: "#{Faker::Address.street_address}, #{Faker::Address.street_suffix}, #{Faker::Address.city}",
	  phone_number: Faker::PhoneNumber.phone_number,
	  type_of_cuisine: ['Chinese', 'Italian', 'American', 'Fine Dining', 'Fast Food', 'Sushi', 'Mexican'].sample
  )
end





# RESTAURANT LIST START [If not using Faker]
	# 	Restaurant.create!([
	#   {name: "Los Colibris", address: "220 King St W, Toronto, ON, CANADA", phone: "416 979 7717", picture: nil, description: "Los Colibrís, meaning “the hummingbirds”, is Toronto’s first upscale Mexican restaurant that features exceptional hospitality, white linen service, and authentic world class Mexican cuisine by Executive Chef Elia Herrera.", category_id: nil, capacity: 120},
	#   {name: "Buca Yorkville", address: "53 Scollard St, Toronto, ON, Canada", phone: "416 962 2822", picture: nil, description: "Coastal cousin of Buca on King Street West, with same great rustic italian fare including fresh seafood;daily whole-fish options to home made pastas and pizza.", category_id: nil, capacity: 100},
	#   {name: "Bar Fancy", address: "1070 Queen St W, Toronto, ON, Canada", phone: "416 546 1416", picture: nil, description: "Our menu of delicious food, cheap beer, wine and simple mixed drinks make us the best place to eat downtown Toronto.", category_id: nil, capacity: 100},
	#   {name: "Mr. Flamingo", address: "1265 Dundas St W, Toronto, ON, Canada", phone: "647 351 1100", picture: nil, description: "Unusual, elevated fare, from oysters to burrata, plus cocktails, served in black-and-white digs.", category_id: nil, capacity: 100},
	#   {name: "Luckee", address: "328 Wellington St W, Toronto, ON, Canada", phone: "416 935 0400", picture: nil, description: "There's richness in tradition, and mastery in interpretation. Susur Lee invites you to Chinese food the way it was meant to be: so tasty you'll want to share.", category_id: nil, capacity: 100},  
	#   {name: "America", address: "325 Bay St, Toronto, ON, Canada", phone: "416 637 5550", picture: nil, description: "Open seven days a week for breakfast, lunch, and dinner, America presents a diverse range of innovative gourmet dishes rooted in classic regional flavours.", category_id: nil, capacity: 100}, 
	#   {name: "Boralia", address: "59 Ossington Ave, Toronto, ON, Canada", phone: "647 351 5100", picture: nil, description: "Boralia celebrates the historic origins of Canadian cuisine. Our menu draws inspiration from traditional Aboriginal dishes, as well as the recipes of early settlers and immigrants of the 18th and 19th centuries.", category_id: nil, capacity: 100}, 
	#   {name: "Burgers Priest", address: "463 Queen St W, Toronto ON", phone: "647 748 8108", picture: nil, description: "We are a classic American cheeseburger joint redeeming the burger one at a time. We grind a custom blend of premium beef multiple times daily on location.", category_id: nil, capacity: 40}
	# ])
