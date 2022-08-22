class RemoveImageIdFromTastes < ActiveRecord::Migration[7.0]
  def change
    remove_column :tastes, :image_id, :string
  end
end
