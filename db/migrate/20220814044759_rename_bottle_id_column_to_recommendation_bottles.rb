class RenameBottleIdColumnToRecommendationBottles < ActiveRecord::Migration[7.0]
  def change
    rename_column :recommendation_bottles, :bottle_id,:original_bottle_id
  end
end
