# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'

Lender.destroy_all
Loan.destroy_all
Item.destroy_all
Borrower.destroy_all

# Lender objects
meg = Lender.create!(
  email: "meg@meg.com",
  password: "password"
)

pip = Lender.create!(
  email: "pip@pip.com",
  password: "password"
)

puts "Created #{Lender.all.count} lenders."

# Item objects
Faker::Number.between(from: 5, to: 9).times do
  Item.create!(
    name: Faker::Book.title,
    category: "book"
  )
end

Faker::Number.between(from: 9, to: 13).times do
  Item.create!(
    name: Faker::Music.album,
    category: "album"
  )
end

Faker::Number.between(from: 3, to: 5).times do
  Item.create!(
    name: Faker::Game.title,
    category: "game"
  )
end

Faker::Number.between(from: 4, to: 8).times do
  Item.create!(
    name: Faker::Movie.title,
    category: "movie"
  )
end

puts "Created #{Item.all.count} items."

# Borrower objects
17.times do
  Borrower.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.free_email,
    phone: Faker::PhoneNumber.cell_phone
  )
end

puts "Created #{Borrower.all.count} borrowers."

# Loan objects
17.times do
  Loan.create!(
    lender: meg,
    borrower: Borrower.all.sample,
    item: Item.all.sample,
    days_borrowed: Faker::Number.between(from: 1, to: 17),
    reminders_sent: Faker::Number.between(from: 1, to: 3),
    returned: Faker::Boolean.boolean(true_ratio: 0.3)
  )
end

14.times do
  Loan.create!(
    lender: pip,
    borrower: Borrower.all.sample,
    item: Item.all.sample,
    days_borrowed: Faker::Number.between(from: 1, to: 17),
    reminders_sent: Faker::Number.between(from: 1, to: 3),
    returned: Faker::Boolean.boolean(true_ratio: 0.4)
  )
end

puts "Created #{Loan.all.count} loans."