class AddForeignkeymigrationToMenuItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_items, :menu, foreign_key: true, null: false
  end
end
