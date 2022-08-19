class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :item
      t.string :description
      t.float :price
      t.references :menu_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
