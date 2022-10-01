class CreateBottles < ActiveRecord::Migration[7.0]
  def change
    create_table :bottles do |t|
      t.integer :area_id
      t.string :bottle_name
      t.integer :age
      t.string :option
      t.string :image
      t.text :introduction
      t.timestamps
    end
  end
end
