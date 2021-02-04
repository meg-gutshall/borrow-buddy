FactoryBot.define do
  factory :item do
    name { Faker::Book.title }
    category { "book" }
  end
end

# Faker::Game.title
# Faker::Movie.title
# Faker::Music.album