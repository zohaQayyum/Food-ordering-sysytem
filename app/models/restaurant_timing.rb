class RestaurantTiming < ApplicationRecord
  belongs_to :restaurant
  belongs_to :weekday
end
