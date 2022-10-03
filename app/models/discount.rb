class Discount < ApplicationRecord
  belongs_to :restaurant
  has_many :vouchers
  has_many :food_items

  enum discount_type: {
    Select: 0,
    Flat: 1,
    Percent: 2,
  }
end
