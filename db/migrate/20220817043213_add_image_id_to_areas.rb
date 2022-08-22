class AddImageIdToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :image_id, :string
  end
end
