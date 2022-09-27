class Voucher < ApplicationRecord
  has_many :orders
  belongs_to :discount
  has_many :voucher_timelines, dependent: :destroy
  accepts_nested_attributes_for :voucher_timelines

  enum voucher_status: {
    Active: 0,
    Expire: 1,
  }

  delegate :discount_percent, to: :discounts
  delegate :discount_type, to: :discounts

  def discount_percent
    discount.discount_percent
  end

  def discount_type
    discount.discount_type
  end

  def name
    "#{promo_code}"
  end
end
