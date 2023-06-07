FactoryBot.define do
  factory :menu_item do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    price { Faker::Commerce.price }
    menu { FactoryBot.create(:menu) }
  end
end