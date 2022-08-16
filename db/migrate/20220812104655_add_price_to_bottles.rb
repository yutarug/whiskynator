class AddPriceToBottles < ActiveRecord::Migration[7.0]
  def change
    add_column :bottles, :price, :integer
  end
end
