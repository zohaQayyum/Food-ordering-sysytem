class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :payment, dependent: :destroy
  belongs_to :restaurant
  belongs_to :review, dependent: :destroy
  belongs_to :voucher
  has_many :order_items, dependent: :destroy
  validates :payment_id, uniqueness: true
  validates :review_id, uniqueness: true

  enum status: {
    "New Order": 0,
    "On Delivery": 1,
    "Delivered": 2,
  }

  delegate :name, :address, :email, :contact, to: :customer
  delegate :rating, :remarks, :remarks, :created_at, to: :review
end
