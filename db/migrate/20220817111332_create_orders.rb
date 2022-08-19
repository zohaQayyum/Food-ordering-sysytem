class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :total_amount
      t.time :time
      t.date :date
      t.float :quantity
      t.text :description

      t.timestamps
    end
  end
end
