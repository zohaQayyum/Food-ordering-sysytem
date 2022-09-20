class Voucher < ApplicationRecord
  has_many :orders
  belongs_to :discount
  has_many :voucher_timelines, dependent: :destroy
  accepts_nested_attributes_for :voucher_timelines

  enum voucher_status: {
    Active: 0,
    Deactivate: 1,
  }

  def name
    "#{promo_code}"
  end
end
