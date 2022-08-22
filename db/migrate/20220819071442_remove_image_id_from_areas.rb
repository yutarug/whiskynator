class RemoveImageIdFromAreas < ActiveRecord::Migration[7.0]
  def change
    remove_column :areas, :image_id, :string
  end
end
