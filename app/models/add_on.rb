class AddOn < ApplicationRecord
  has_many :menu_add_ons
  has_many :menu_items, through: :menu_add_ons
end 
