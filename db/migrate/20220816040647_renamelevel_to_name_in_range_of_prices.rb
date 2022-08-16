class RenamelevelToNameInRangeOfPrices < ActiveRecord::Migration[7.0]
  def change
    rename_column :range_of_prices, :level,:name
  end
end
