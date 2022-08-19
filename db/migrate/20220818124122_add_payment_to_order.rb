class AddPaymentToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :payment, null: false, foreign_key: true
  end
end
