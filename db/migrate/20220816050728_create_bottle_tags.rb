class CreateBottleTags < ActiveRecord::Migration[7.0]
  def change
    create_table :bottle_tags do |t|
      t.integer :bottle_id
      t.integer :tag_id
      t.timestamps
    end
  end
end
