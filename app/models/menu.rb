# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_items
  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
