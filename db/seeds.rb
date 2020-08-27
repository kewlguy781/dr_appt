# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

#seeding clients here
10.times do
    user = Client.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      notes: Faker::Marketing.buzzwords,
    )
end
#seeding doctors here
10.times do
    user = Doctor.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      notes: Faker::ChuckNorris.fact,
    )
end