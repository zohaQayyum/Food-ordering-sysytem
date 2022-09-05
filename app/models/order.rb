class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :payment
  belongs_to :restaurant
  belongs_to :review
  belongs_to :voucher
  validates :payment_id, uniqueness: true
  validates :review_id, uniqueness: true
  enum status: {
    Options: 0,
    Preparing: 1,
    Prepared: 2,
    TakenOver: 3,
    Cancelled: 4,
    Delivering: 5
  }
end
