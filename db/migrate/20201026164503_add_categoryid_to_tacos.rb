class AddCategoryidToTacos < ActiveRecord::Migration[6.0]
  def change
    add_column :tacos, :category_id, :integer
  end
end
