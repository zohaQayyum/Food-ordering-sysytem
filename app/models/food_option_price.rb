class FoodOptionPrice < ApplicationRecord
  belongs_to :food_item
  belongs_to :option
end
