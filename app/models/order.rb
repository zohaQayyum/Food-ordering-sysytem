class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :payment
  belongs_to :restaurant
  belongs_to :review
  belongs_to :voucher
  validates :payment_id, uniqueness: true
  validates :review_id, uniqueness: true
  enum status: {
    "New Order": 0,
    "On Delivery": 1,
    "Delivered": 2,
  }
end
