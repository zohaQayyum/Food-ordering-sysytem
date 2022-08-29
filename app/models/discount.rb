class Discount < ApplicationRecord
  belongs_to :voucher
  belongs_to :restaurant 
end
