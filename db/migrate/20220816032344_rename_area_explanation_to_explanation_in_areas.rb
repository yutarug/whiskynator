class RenameAreaExplanationToExplanationInAreas < ActiveRecord::Migration[7.0]
  def change
    rename_column :areas, :area_explanation,:explanation
  end
end
