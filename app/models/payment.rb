class Payment < ApplicationRecord
	has_one :order
	enum method: {
    "Cash on Delivery": 0,
    "Online": 1
  }
end
