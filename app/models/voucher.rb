class Voucher < ApplicationRecord
  has_many :orders
  belongs_to :discount
  has_many :voucher_timelines, dependent: :destroy
  accepts_nested_attributes_for :voucher_timelines

  enum voucher_status: {
    Active: 0,
    Expire: 1,
  }

  delegate :discount_percent, :discount_type, to: :discount

  def name
    "#{promo_code}"
  end
end
