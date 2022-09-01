class PaymentCutOff < ApplicationRecord
  belongs_to :payment
  validates :payment_id, uniqueness: true
end
