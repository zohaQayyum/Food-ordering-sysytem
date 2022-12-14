class FoodItem < ApplicationRecord
  belongs_to :deal
  belongs_to :discount
  belongs_to :group_item
  has_many :order_items, as: :orderable
  has_many :order_histories
  has_many :deal_items, as: :dealable
end
