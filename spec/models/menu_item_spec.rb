# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:menu) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }

    it 'validates the uniqueness of the name scoped to the menu_id' do
      menu = FactoryBot.create(:menu)
      menu_item = FactoryBot.create(:menu_item, menu:)
      menu_item2 = FactoryBot.build(:menu_item, menu:, name: menu_item.name)
      expect(menu_item).to be_valid
      expect(menu_item2).to_not be_valid
    end
  end

  describe 'object instantiation' do
    let!(:menu) { FactoryBot.create(:menu) }
    let!(:menu_item) { FactoryBot.create(:menu_item, menu:) }

    it 'creates a valid MenuItem object' do
      expect(menu_item).to be_valid
    end

    it 'associates the MenuItem with the Menu' do
      expect(menu.menu_items).to include(menu_item)
    end
  end
end
