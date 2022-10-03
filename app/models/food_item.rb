class FoodItem < ApplicationRecord
  belongs_to :discount
  belongs_to :group_item
  has_many :order_items, as: :orderable
  has_many :order_histories
  has_many :deal_items, as: :dealable

  def group_item_name
    group_item.name
  end

  def discount_percent
    discount.discount_percent
  end
end
