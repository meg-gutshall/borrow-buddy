# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Lender objects
meg = Lender.create(
  email: "meg@meg.com",
  password: "password"
)

pip = Lender.create(
  email: "pip@pip.com",
  password: "password"
)

# Item objects
3.times do
  Item.create(
    lender_id: 1,
    name: Faker::Book.title,
    category: "book"
  )
end

2.times do
  Item.create(
    lender_id: 1,
    name: Faker::Music.album,
    category: "album"
  )
end

4.times do
  Item.create(
    lender_id: 2,
    name: Faker::Game.title,
    category: "game"
  )
end

# Recipient objects
7.times do
  Recipient.create(
    name: Faker::Name.first_name,
    email: Faker::Internet.free_email,
    phone: Faker::PhoneNumber.cell_phone
  )
end

# Borrow objects
11.times do
  Borrow.create(
    recipient_id: Faker::Number.between(1, 7),
    item_id: Faker::Number.between(1, 9),
    days_borrowed: Faker::Number.between(1, 17),
    reminders_sent: Faker::Number.between(1, 3),
    returned: Faker::Boolean.boolean
  )
end
