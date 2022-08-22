class RemoveImageIdFromBottles < ActiveRecord::Migration[7.0]
  def change
    remove_column :bottles, :image_id, :string
  end
end
