FactoryBot.define do
  factory :lender do
    email { Faker::Internet.free_email }
    password { Faker::Internet.password }

    trait :with_loans do
      after(:build) do |lender|
        lender.loans << build(:loan, lender: lender) 
      end
    end

    factory :lender_with_loans, traits: :with_loans
  end
end
