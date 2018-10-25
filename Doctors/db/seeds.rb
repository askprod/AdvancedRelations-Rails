# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |index|
    doctors = Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, specialty: Faker::Cannabis.strain, postal_code: Faker::Address.zip_code)
end

10.times do |index|
    patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

100.times do |index|
    appointments = Appointment.create!(date: Faker::Date.forward(23),doctor_id: "#{rand(1..5)}", patient_id: "#{rand(1..10)}")
end