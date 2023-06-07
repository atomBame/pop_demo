FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
    after(:create) do |restaurant|
      create(:menu, restaurant: restaurant)
    end
  end
end
