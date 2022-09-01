class Voucher < ApplicationRecord
  has_many :orders 
  has_many :voucher_timelines,  dependent: :destroy
  has_many :discounts

  def name 
    "#{promo_code}"
  end 
end
