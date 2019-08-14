# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Lender.destroy_all
Item.destroy_all
Recipient.destroy_all
Borrow.destroy_all


# Lender objects
meg = Lender.create!(
  email: "meg@meg.com",
  password: "password"
)

pip = Lender.create!(
  email: "pip@pip.com",
  password: "password"
)

# Item objects
3.times do
  Item.create!(
    name: Faker::Book.title,
    category: "book"
  )
end

2.times do
  Item.create!(
    name: Faker::Music.album,
    category: "album"
  )
end

4.times do
  Item.create!(
    name: Faker::Game.title,
    category: "game"
  )
end

# Recipient objects
7.times do
  Recipient.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.free_email,
    phone: Faker::PhoneNumber.cell_phone
  )
end

# Borrow objects
Borrow.create!(
  lender_id: 1,
  recipient_id: 2,
  item_id: 3,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: true
)

Borrow.create!(
  lender_id: 2,
  recipient_id: 5,
  item_id: 6,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: true
)

Borrow.create!(
  lender_id: 1,
  recipient_id: 1,
  item_id: 1,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 1,
  recipient_id: 2,
  item_id: 2,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 1,
  recipient_id: 3,
  item_id: 3,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 1,
  recipient_id: 4,
  item_id: 4,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 1,
  recipient_id: 5,
  item_id: 5,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 2,
  recipient_id: 6,
  item_id: 6,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 2,
  recipient_id: 7,
  item_id: 7,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 2,
  recipient_id: 6,
  item_id: 8,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Borrow.create!(
  lender_id: 2,
  recipient_id: 1,
  item_id: 9,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)
