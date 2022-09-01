class Payment < ApplicationRecord
	has_one :payment_cut_off,  dependent: :destroy
	has_one :order
	enum method: {
		cash_on_delivery: 0,
		online: 1
	}

	def payment_id
		"#{method}"
	end

end
