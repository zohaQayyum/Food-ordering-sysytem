class AddForeignkeymigrationToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :voucher, foreign_key: true
    add_reference :orders, :order_status, foreign_key: true
  end
end
