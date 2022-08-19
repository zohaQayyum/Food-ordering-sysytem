class Option < ApplicationRecord
  belongs_to :menu_item
  has_many :menu_options
  has_many :menu_items, through: :menu_options
end
 