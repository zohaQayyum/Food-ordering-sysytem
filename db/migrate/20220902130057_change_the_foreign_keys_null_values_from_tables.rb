class ChangeTheForeignKeysNullValuesFromTables < ActiveRecord::Migration[6.1]
  def change
    remove_reference :employees, :restaurant, null: false, foreign_key: true
    add_reference :employees, :restaurant, null: true, foreign_key: true

    remove_reference :food_items, :discount, null: false, foreign_key: true
    add_reference :food_items, :discount, null: true, foreign_key: true

    remove_reference :discounts, :voucher, null: false, foreign_key: true
    add_reference :vouchers, :discount, null: true, foreign_key: true

    remove_reference :food_items, :deal, null: false, foreign_key: true

    remove_reference :orders, :order_status, null: false
    remove_reference :orders, :rating, null: false

    remove_reference :order_histories, :deal, null: false, foreign_key: true
    add_reference :order_histories, :deal, null: true, foreign_key: true

  end
end
