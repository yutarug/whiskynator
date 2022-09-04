class RemoveRangeOfPriceIdFromBottles < ActiveRecord::Migration[7.0]
  def change
    remove_column :bottles, :range_of_price_id, :integer
  end
end
