FactoryBot.define do
  factory :item do
    name { Faker::Book.title }
    category { "book" }
  end
end

# Faker::Game.title
# Faker::Movie.title
# Faker::Music.album

def item_with_loan
  FactoryBot.create(:item) do |item|
    FactoryBot.create(:loan, item: item)
  end
end