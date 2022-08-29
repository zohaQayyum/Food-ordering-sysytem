class CreateAddOns < ActiveRecord::Migration[6.1]
  def change
    create_table :add_ons do |t|
      t.string :item_name
      t.float :price

      t.timestamps
    end
  end
end
