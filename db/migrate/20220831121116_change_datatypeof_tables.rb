class ChangeDatatypeofTables < ActiveRecord::Migration[6.1]
  def self.up
    change_table :payments do |t|
      t.change :method, :integer, default: 0
    end
    change_table :restaurants do |t|
      t.change :status, :integer, default: 0
    end
  end
  def self.down
    change_table :payments do |t|
      t.change :method, :string
    end
    change_table :restaurants do |t|
      t.change :status, :string
    end
  end
end
