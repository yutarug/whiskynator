class AddImageIdToTastes < ActiveRecord::Migration[7.0]
  def change
    add_column :tastes, :image_id, :string
  end
end
