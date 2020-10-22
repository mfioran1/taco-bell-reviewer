class RemoveCategoryFromTacos < ActiveRecord::Migration[6.0]
  def change
    remove_column :tacos, :category
  end
end
