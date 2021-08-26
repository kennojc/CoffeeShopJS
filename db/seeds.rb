# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1000.times do
    Sale.create!(
        amount: rand(1990..5490),
        origin: Faker::Coffee.origin,
        blend: Faker::Coffee.blend_name,
        date: Faker::Date.between(from: '2019-1-1', to: Date.today)
    )
end