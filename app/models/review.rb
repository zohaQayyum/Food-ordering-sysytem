class Review < ApplicationRecord
  has_one :order
  enum rating: {
    "Excellent": 0,
    "Very Good": 1,
    "Good": 2,
    "Weak": 3,
    "Unacceptable": 4
  }
end
