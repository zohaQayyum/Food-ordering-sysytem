class ChangeDataTypeToEnum < ActiveRecord::Migration[6.1]
  def self.up
    add_column :orders, :status, :integer, :default => 0
    add_column :restaurant_timings, :weekdays, :integer, :default => 0
  end

  def self.down
    remove_column :orders, :status, :integer, :default => 0
    remove_column :restaurant_timings, :weekdays, :integer, :default => 0
  end

end
