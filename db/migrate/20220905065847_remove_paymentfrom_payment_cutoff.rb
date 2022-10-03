class RemovePaymentfromPaymentCutoff < ActiveRecord::Migration[6.1]
  def change
    remove_reference :payment_cut_offs, :paymet, null: true
    add_reference :payment_cut_offs, :restaurant, null: true
  end
end
