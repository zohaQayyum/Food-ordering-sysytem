class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_timings, dependent: :destroy
  has_many :menu_items,  dependent: :destroy
end 
