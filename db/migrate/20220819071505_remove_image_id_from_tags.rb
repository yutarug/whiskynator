class RemoveImageIdFromTags < ActiveRecord::Migration[7.0]
  def change
    remove_column :tags, :image_id, :string
  end
end
