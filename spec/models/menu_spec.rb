# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:menu_items) }
    it { is_expected.to belong_to(:restaurant) }
  end

  describe 'validations' do
    subject { FactoryBot.create(:menu) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'object instantiation' do
    let!(:menu) { FactoryBot.create(:menu, :with_menu_with_items) }
    let!(:menu_item) { menu.menu_items.first }

    it 'creates a valid Menu object' do
      expect(menu).to be_valid
    end

    it 'creates a valid MenuItem object' do
      expect(menu_item).to be_valid
    end

    it 'associates the MenuItem with the Menu' do
      expect(menu.menu_items).to include(menu_item)
    end
  end
end
