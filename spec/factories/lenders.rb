FactoryBot.define do
  factory :lender do
    email { Faker::Internet.free_email }
    password { Faker::Internet.password }
  end
end
