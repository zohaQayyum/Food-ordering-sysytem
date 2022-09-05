class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :payment
  validates :payment_id, uniqueness: true
  belongs_to :restaurant
  belongs_to :review
  validates :review_id, uniqueness: true
  belongs_to :voucher

  enum status: {
    Options: 0,
    Preparing: 1,
    Prepared: 2,
    TakenOver: 3,
    Cancelled: 4,
    Delivering: 5
  }

end
