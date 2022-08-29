class Payment < ApplicationRecord
	has_one :payment_cut_off,  dependent: :destroy
	has_one :order
end
