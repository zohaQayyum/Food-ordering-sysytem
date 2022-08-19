class CreateMenuOfCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_of_categories do |t|
      t.string :category_name
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
