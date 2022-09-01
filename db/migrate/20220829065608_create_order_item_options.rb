class CreateOrderItemOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :order_item_options do |t|
      t.integer :quantity
      t.references :order_item, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
