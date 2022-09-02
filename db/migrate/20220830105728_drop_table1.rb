class DropTable1 < ActiveRecord::Migration[6.1]
  def change
    drop_table :admin_users
    drop_table :active_admin_comments
  end
end
