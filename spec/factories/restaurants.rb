# frozen_string_literal: true

FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
    after(:create) do |restaurant|
      create(:menu, restaurant:)
    end
  end
end
