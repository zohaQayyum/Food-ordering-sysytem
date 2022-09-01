class FixColumnNameofPaymentCutOff < ActiveRecord::Migration[6.1]
  def change
    rename_column :payment_cut_offs, :retaurant_amount, :restaurant_amount
  end
end
