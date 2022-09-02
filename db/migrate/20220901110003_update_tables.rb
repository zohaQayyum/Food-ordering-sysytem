class UpdateTables < ActiveRecord::Migration[6.1]
  def self.up
    change_column :vouchers, :voucher_status, :integer, :default => 0
    change_column :discounts, :discount_type, :integer, :default => 0
  end

  def self.down
    remove_column :vouchers, :voucher_status, :boolean
    remove_column :discounts, :discount_type, :string
  end
end
