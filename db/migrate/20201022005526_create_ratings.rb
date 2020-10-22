class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.text :taste
      t.text :comments
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :taco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
