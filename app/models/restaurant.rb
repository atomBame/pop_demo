class Restaurant < ApplicationRecord
  has_many :menus
  validates :name, presence: true
  validates :name, uniqueness: true
end
