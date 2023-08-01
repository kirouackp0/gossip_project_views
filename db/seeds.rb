# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all



#Create 10 fake cities (cities belong to nothing). Bang blocks unvalidated records
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

#Create 10 fake users (Users belong to one city). Bang blocks unvalidated records
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 5),
    email: Faker::Internet.email,
    age: rand(16..80),
    city: City.all.sample
  )
end

#Create fake tags 
10.times do
  Tag.create!(title: Faker::Lorem.word)
end

#Create fake gossip (tied to User)
20.times do
Gossip.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.sentence(word_count: 20),
    user: User.all.sample
  )
end

#Create fake private messages (tied to sender)
20.times do
    PrivateMessage.create!(
    content: Faker::Lorem.sentence(word_count: 20),
    user: User.all.sample
    )
end