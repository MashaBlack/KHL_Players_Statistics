class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :file
      t.string :name
      t.string :team
      t.integer :goals
      t.integer :assists
      t.float :ave_value
      t.integer :theme_id
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end

class Image < ApplicationRecord
  belongs_to :theme
end

