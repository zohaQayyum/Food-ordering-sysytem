class CreateMenuAddOns < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_add_ons do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.references :add_on, null: false, foreign_key: true

      t.timestamps
    end
  end
end
