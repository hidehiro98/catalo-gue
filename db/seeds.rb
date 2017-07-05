# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning catalogues..."
Catalogue.destroy_all

puts "Creating catalogues..."
Catalogue.create(
  user: User.first,
  name: "Catalogue from seeds",
  rank1: "https://unsplash.it/800/539",
  rank2: "https://unsplash.it/800/539",
  rank3: "https://unsplash.it/800/539",
  rank4: "https://unsplash.it/800/539",
  rank5: "https://unsplash.it/800/539",
  rank6: "https://unsplash.it/800/539",
  rank7: "https://unsplash.it/800/539"
  )

puts "Finished!"
