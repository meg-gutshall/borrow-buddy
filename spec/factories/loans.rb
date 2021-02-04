FactoryBot.define do
  factory :loan do
    lender
    item
    borrower
    days_borrowed { Faker::Number.between(1, 17) }
    reminders_sent { Faker::Number.between(1, 3) }
    returned { Faker::Boolean.boolean }
  end
end
