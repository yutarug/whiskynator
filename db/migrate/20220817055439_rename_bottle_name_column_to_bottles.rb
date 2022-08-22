class RenameBottleNameColumnToBottles < ActiveRecord::Migration[7.0]
  def change
    rename_column :bottles, :bottle_name, :name
  end
end
