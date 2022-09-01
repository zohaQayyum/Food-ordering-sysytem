class AddMenuableToMenu < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_items, :menuable, polymorphic: true, null: false
  end
end
