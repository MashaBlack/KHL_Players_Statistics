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

      t.timestamps
    end
  end
end
