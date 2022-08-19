class MenuItem < ApplicationRecord
  belongs_to :deal
  belongs_to :discount
  belongs_to :menu_of_category
  has_many :menu_add_ons
  has_many :add_ons, through: :menu_add_ons
  has_many :oredr_items
  has_many :orders, through: :oredr_items
  has_many :menu_options
  has_many :options, through: :menu_options
end
   