class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_timings, dependent: :destroy
  has_many :menu_items

  delegate :food_items, to: :menu_items
end
