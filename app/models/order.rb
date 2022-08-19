class Order < ApplicationRecord
    belongs_to :restaurant
    belongs_to  :customer
    has_many :oredr_items
    has_many :menu_items, through: :oredr_items 
    belongs_to :payment
    belongs_to :voucher
end
  