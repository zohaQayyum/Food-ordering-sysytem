class DropTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :order_statuses
    drop_table :weekdays
  end
end
