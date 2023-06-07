# frozen_string_literal: true

FactoryBot.define do
  factory :menu_item do
    name { Faker::Name.unique.name }
    description { Faker::Lorem.sentence }
    price { Faker::Commerce.price }
    menu { FactoryBot.create(:menu) }
  end
end
