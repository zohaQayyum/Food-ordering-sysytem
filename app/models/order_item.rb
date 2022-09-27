class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :orderable, polymorphic: true
  has_many :order_histories
  has_many :order_item_add_ons
  has_many :order_item_options
end
