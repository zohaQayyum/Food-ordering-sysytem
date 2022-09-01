class CreateOrderItemAddOns < ActiveRecord::Migration[6.1]
  def change
    create_table :order_item_add_ons do |t|
      t.integer :quantity
      t.references :order_item, null: false, foreign_key: true
      t.references :add_on, null: false, foreign_key: true

      t.timestamps
    end
  end
end
