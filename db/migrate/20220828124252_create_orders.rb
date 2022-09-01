class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :total_amount
      t.datetime :date_time
      t.string :description
      t.references :customer, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.references :rating, null: false, foreign_key: true

      t.timestamps
    end
  end
end
