class CreateRecommendationBottles < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendation_bottles do |t|
      t.integer :bottle_id
      t.integer :recommended_bottle_id

      t.timestamps
    end
  end
end
