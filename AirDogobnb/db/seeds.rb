# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |index|
    city = City.create!(city_name: Faker::Address.city)
end

50.times do |index|
    dogsit = Dogsitter.create!(user_name: Faker::Simpsons.character, city_id: "#{rand(1..5)}") 
end

300.times do |index|
    god = Dog.create!(dog_name: Faker::Superhero.name, city_id: "#{rand(1..5)}")
end

25.times do |index|
    strolls = Stroll.create!(place: Faker::Address.street_name, dog_id:"#{rand(1..300)}", dogsitter_id: "#{rand(1..50)}" )
end
