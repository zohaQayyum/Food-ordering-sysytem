class RemoveWeekdayFromMenuTimings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :menu_timings, :weekday, null: false
    add_column :menu_timings, :weekdays, :integer, :default => 0
  end
end
