# frozen_string_literal: true

class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
