class Weekday < ApplicationRecord
  has_many :restaurant_timings
  has_many :menu_timings
end
