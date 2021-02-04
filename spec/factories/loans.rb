FactoryBot.define do
  factory :loan do
    lender
    item
    borrower
    days_borrowed { Faker::Number.between(from: 1, to: 17) }
    reminders_sent { Faker::Number.between(from: 1, to: 3) }
    returned { Faker::Boolean.boolean }
  end
end
