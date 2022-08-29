class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :deals, :time_active_fron, :time_active_from
  end
end
