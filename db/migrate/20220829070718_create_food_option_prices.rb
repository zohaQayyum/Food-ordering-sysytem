class CreateFoodOptionPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :food_option_prices do |t|
      t.float :price
      t.references :food_item, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
