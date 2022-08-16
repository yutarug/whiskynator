class AddAreaExplanationToArea < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :area_explanation, :text
  end
end
