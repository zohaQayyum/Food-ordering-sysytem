class RemoveWeekdayFromRestaurantTiming < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurant_timings, :weekday_id
  end
end
