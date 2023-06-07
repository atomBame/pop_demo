# frozen_string_literal: true

FactoryBot.define do
  factory :menu do
    name { Faker::Name.unique.name }
    description { Faker::Lorem.sentence }
    restaurant { FactoryBot.create(:restaurant) }

    trait :with_menu_with_items do
      after(:create) do |menu|
        create_list(:menu_item, 5, menu:)
      end
    end
  end
end
