FactoryBot.define do
  factory :borrower do
    name { Faker::Name.first_name }
    email { Faker::Internet.free_email }
    phone { Faker::PhoneNumber.cell_phone }
  end
end
