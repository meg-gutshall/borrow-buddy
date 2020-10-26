# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

# Lender objects
meg = Lender.create!(
  email: "meg@meg.com",
  password: "password"
)

pip = Lender.create!(
  email: "pip@pip.com",
  password: "password"
)
puts "Created #{Lender.count} lenders."

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

puts "Created #{Item.count} items."

# Borrower objects
7.times do
  Borrower.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.free_email,
    phone: Faker::PhoneNumber.cell_phone
  )
end

puts "Created #{Borrower.count} borrowers."

# Loan objects
Loan.create!(
  lender_id: 1,
  borrower_id: 1,
  item_id: 1,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 1,
  borrower_id: 2,
  item_id: 2,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 1,
  borrower_id: 3,
  item_id: 3,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 1,
  borrower_id: 4,
  item_id: 4,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 1,
  borrower_id: 5,
  item_id: 5,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 2,
  borrower_id: 6,
  item_id: 6,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 2,
  borrower_id: 7,
  item_id: 7,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 2,
  borrower_id: 6,
  item_id: 8,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 2,
  borrower_id: 1,
  item_id: 9,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 1,
  borrower_id: 2,
  item_id: 3,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

Loan.create!(
  lender_id: 2,
  borrower_id: 5,
  item_id: 6,
  days_borrowed: Faker::Number.between(1, 17),
  reminders_sent: Faker::Number.between(1, 3),
  returned: Faker::Boolean.boolean
)

puts "Created #{Loan.count} loans."