class RestaurantTiming < ApplicationRecord
  belongs_to :restaurant
  has_many :payment_cut_offs,  dependent: :destroy

  enum weekdays: {
    Select: 0,
    Monday: 1,
    Tuesday: 2,
    Wednesday: 3,
    Thursday: 4,
    Friday: 5,
		Saturday: 6,
		Sunday: 7
  }
end
