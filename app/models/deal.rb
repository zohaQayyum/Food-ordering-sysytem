class Deal < ApplicationRecord
  has_many :menu_items, as: :menuable
  has_many :order_items, as: :orderable
  has_many :order_histories
end
