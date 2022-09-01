class Discount < ApplicationRecord
  belongs_to :voucher
  belongs_to :restaurant
  enum discount_type: {
    Select: 0,
    Flat: 1,
    Percent: 2,
  }
end
