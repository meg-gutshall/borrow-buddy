FactoryBot.define do
  factory :borrower do
    name { Faker::Name.first_name }
    email { Faker::Internet.free_email }
    phone { Faker::PhoneNumber.cell_phone }
  end
end

def borrower_with_loan
  FactoryBot.create(:borrower) do |borrower|
    FactoryBot.create(:loan, borrower: borrower)
  end
end