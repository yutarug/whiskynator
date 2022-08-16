class RenameTasteNameToNameInTastes < ActiveRecord::Migration[7.0]
  def change
    rename_column :tastes, :taste_name,:name
  end
end
