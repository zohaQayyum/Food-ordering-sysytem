class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.references :deal, null: false, foreign_key: true
      t.references :discount, null: false, foreign_key: true
      t.references :menu_of_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
