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

  delegate :customers, to: :order_items
  delegate :rating, to: :reviews
  delegate :remarks, to: :reviews
  delegate :created_at, to: :reviews

  def customer_name
    customer.name
  end

  def customer_email
    customer.email
  end

  def customer_contact
    customer.contact
  end

  def customer_address
    customer.address
  end

  def rating
    review.rating
  end

  def remarks
    review.remarks
  end

  def created_at
    review.created_at
  end
end
