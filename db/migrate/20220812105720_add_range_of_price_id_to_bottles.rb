class AddRangeOfPriceIdToBottles < ActiveRecord::Migration[7.0]
  def change
    add_column :bottles, :range_of_price_id, :integer
  end
end
