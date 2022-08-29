class CreateOrderHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :order_histories do |t|
      t.references :food_item, null: false, foreign_key: true
      t.references :order_item, null: false, foreign_key: true
      t.references :deal, null: false, foreign_key: true
      t.references :group_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
