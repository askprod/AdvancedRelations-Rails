# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

10.times do |index|
    users = User.create!(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, description: Faker::Movie.quote, email: Faker::Internet.email, age: "#{rand(1..80)}", city_id: "#{rand(1..10)}")
end

10.times do |index|
    cities = City.create!(name: Faker::Address.city, postal_code: Faker::Address.postcode)
end

20.times do |index|
    gossips = Gossip.create!(title: Faker::Beer.name,content: Faker::Beer.style, user_id: "#{rand(1..10)}")
end

10.times do |index|
    tags = Tag.create!(title: Faker::Beer.hop)
end

1.times do |index|
    pms = PrivateMessage.create!(content: Faker::Beer.style,recipient_id: "#{rand(1..10)}",sender_id: "#{rand(1..10)}")
end

