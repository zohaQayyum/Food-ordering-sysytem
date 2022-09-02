class Restaurant < ApplicationRecord
	validates :name, :contact, presence: true
	scope :OpenRestaurants, -> {
		where(:status => true)
	}
  has_many :employees, dependent: :destroy
	has_many :menus,  dependent: :destroy
	has_many :restaurant_timings,  dependent: :destroy
	has_many :orders,  dependent: :destroy
	has_many :discounts,  dependent: :destroy
	enum status: {
    Select: 0,
    Open: 1,
		Closed: 2
  }

end
