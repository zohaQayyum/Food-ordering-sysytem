class CreateAddOns < ActiveRecord::Migration[6.1]
  def change
    create_table :add_ons do |t|
      t.string :add_on_item
      t.references :menu_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
