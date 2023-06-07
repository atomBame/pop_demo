# frozen_string_literal: true

class MenuItem < ApplicationRecord
  belongs_to :menu
  validates :name, :description, presence: true
  validates_uniqueness_of :name, scope: :menu_id
  validates :price, numericality: { greater_than: 0 }
end
