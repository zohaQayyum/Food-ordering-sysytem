class CreateFoodItems < ActiveRecord::Migration[6.1]
  def change
    create_table :food_items do |t|
      t.integer :quantity
      t.string :name
      t.float :price
      t.references :deal, null: false, foreign_key: true
      t.references :discount, null: false, foreign_key: true
      t.references :group_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
