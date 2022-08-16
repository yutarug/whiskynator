class CreateRangeOfPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :range_of_prices do |t|
      t.string :level
      t.timestamps
    end
  end
end
