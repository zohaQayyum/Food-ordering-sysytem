class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :payment
  validates :payment_id, uniqueness: true
  belongs_to :restaurant
  belongs_to :rating
  validates :rating_id, uniqueness: true
  belongs_to :voucher
  belongs_to :order_status,  dependent: :destroy
end
  