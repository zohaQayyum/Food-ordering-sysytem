class Restaurant < ApplicationRecord
	scope :OpenRestaurants, -> { where(:status => true) }

	has_one :PaymentCutOff, dependent: :destroy
  has_many :employees, dependent: :destroy
	has_many :menus,  dependent: :destroy
	has_many :restaurant_timings,  dependent: :destroy
	has_many :orders,  dependent: :destroy
	has_many :discounts,  dependent: :destroy
	validates :name, :contact, presence: true
	enum status: {
    Select: 0,
    Open: 1,
		Closed: 2
  }
end
