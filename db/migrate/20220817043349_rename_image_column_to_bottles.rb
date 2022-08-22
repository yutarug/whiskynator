class RenameImageColumnToBottles < ActiveRecord::Migration[7.0]
  def change
    rename_column :bottles, :image, :image_id
  end
end
