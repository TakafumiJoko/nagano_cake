# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.create!(name: "Example Item",
             caption: Faker::Lorem.sentence,
             image: "cake.jpg",
             price: 100,
             category: 0)
             
latest_category_id = Item.categories.values.last.to_i

99.times do |n|
  name = "Example Item#{n+1}"
  caption = Faker::Lorem.sentence
  image = "cake.jpg"
  price = 100
  category_id = rand latest_category_id
  Item.create!(name: name,
             caption: caption,
             image: image,
             price: price,
             category: category_id)
end