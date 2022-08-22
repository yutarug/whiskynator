class RenameIntroductionColumnToBottles < ActiveRecord::Migration[7.0]
  def change
    rename_column :bottles, :introduction, :explanation
  end
end
