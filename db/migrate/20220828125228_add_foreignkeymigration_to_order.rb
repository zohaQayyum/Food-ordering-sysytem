class AddForeignkeymigrationToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :voucher, foreign_key: true
  end
end
