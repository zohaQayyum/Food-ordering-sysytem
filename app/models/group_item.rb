class GroupItem < ApplicationRecord
  has_many :menu_items, as: :menuable
  has_many :order_histories
  has_many :deal_items, as: :dealable 
end
