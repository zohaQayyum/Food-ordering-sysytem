class AddColumnsToDeal < ActiveRecord::Migration[6.1]
  def self.up
    add_column :deals, :deal_type, :integer, :default => 0
    add_column :deals, :description, :string
    add_column :deals, :price, :float
  end

  def self.down
    remove_column :deals, :deal_type, :integer, :default => 0
    remove_column :deals, :description, :string
  end
end
