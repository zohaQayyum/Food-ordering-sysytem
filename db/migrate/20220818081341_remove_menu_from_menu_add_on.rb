class RemoveMenuFromMenuAddOn < ActiveRecord::Migration[6.1]
  def change
    remove_column :menu_add_ons, :menu, :string
  end
end
