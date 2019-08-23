FactoryBot.define do
  factory :item do
    name { Faker::Book.title }
    category { "book" }
  end
end
