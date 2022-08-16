class CreateMatures < ActiveRecord::Migration[7.0]
  def change
    create_table :matures do |t|
      t.string :name
      t.timestamps
    end
  end
end
