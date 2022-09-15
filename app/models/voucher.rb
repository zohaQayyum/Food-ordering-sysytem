class Voucher < ApplicationRecord
  has_many :orders
  belongs_to :discount
  has_many :voucher_timelines, dependent: :destroy
  enum voucher_status: {
    Activate: 0,
    Deactivate: 1,
  }

  def name
    "#{promo_code}"
  end
end
