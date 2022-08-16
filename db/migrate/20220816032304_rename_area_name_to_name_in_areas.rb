class RenameAreaNameToNameInAreas < ActiveRecord::Migration[7.0]
  def change
    rename_column :areas, :area_name,:name
  end
end
