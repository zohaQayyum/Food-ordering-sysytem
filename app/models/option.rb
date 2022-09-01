class Option < ApplicationRecord
  has_many :order_item_options
  has_many :menu_options
	has_many :menu_items, through: :menu_options
end
