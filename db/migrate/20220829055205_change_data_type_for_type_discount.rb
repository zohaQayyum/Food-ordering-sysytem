class ChangeDataTypeForTypeDiscount < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :discounts, :type, :discount_type
  end
  def self.down
    rename_column :discounts, :discount_type, :type
  end
end
