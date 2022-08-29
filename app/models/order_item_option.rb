class OrderItemOption < ApplicationRecord
  belongs_to :order_item
  belongs_to :option
end
