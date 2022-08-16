class AddMatureIdToBottles < ActiveRecord::Migration[7.0]
  def change
    add_column :bottles, :mature_id, :integer
  end
end
