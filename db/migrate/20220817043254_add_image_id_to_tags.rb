class AddImageIdToTags < ActiveRecord::Migration[7.0]
  def change
    add_column :tags, :image_id, :string
  end
end
