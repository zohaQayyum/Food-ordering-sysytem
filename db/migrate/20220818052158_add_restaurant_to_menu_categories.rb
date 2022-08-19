class AddRestaurantToMenuCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_categories, :restaurant, null: false, foreign_key: true
  end 
end
