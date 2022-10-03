class ChangeDataTypeofColumn < ActiveRecord::Migration[6.1]
  def up
    change_column :restaurants, :status, :boolean
  end

  def down
    change_column :restaurants, :status, :string
  end
end
