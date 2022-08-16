class CreateTastes < ActiveRecord::Migration[7.0]
  def change
    create_table :tastes do |t|
      t.string :taste_name
      t.string :explanation
      t.timestamps
    end
  end
end
