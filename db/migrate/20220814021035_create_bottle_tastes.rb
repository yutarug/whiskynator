class CreateBottleTastes < ActiveRecord::Migration[7.0]
  def change
    create_table :bottle_tastes do |t|
      t.integer :bottle_id
      t.integer :taste_id

      t.timestamps
    end
  end
end
