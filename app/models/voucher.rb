class Voucher < ApplicationRecord
  has_many :orders
  has_many :discounts

  def name
    "#{promo_code}"
  end
  has_many :voucher_timelines, dependent: :destroy
  enum voucher_status: {
    Activate: 0,
    Deactivate: 1,
  }
end
