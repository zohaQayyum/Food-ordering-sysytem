class CreatePaymentCutOffs < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_cut_offs do |t|
      t.integer :admin_percent
      t.integer :admin_amount
      t.integer :restaurant_percent
      t.integer :retaurant_amount
      t.integer :total_amount
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
