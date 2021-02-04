FactoryBot.define do
  factory :lender do
    email { Faker::Internet.free_email }
    password { Faker::Internet.password }
  end
end

def lender_with_loan
  FactoryBot.create(:lender) do |lender|
    FactoryBot.create(:loan, lender: lender)
  end
end