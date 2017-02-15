# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  eat_choices = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: Faker::Space.unique.galaxy, address: Faker::Address.unique.street_address, phone_number: Faker::PhoneNumber.phone_number, category: eat_choices)
end
