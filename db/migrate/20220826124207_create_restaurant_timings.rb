class CreateRestaurantTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_timings do |t|
      t.time :open_to
      t.time :open_from
      t.references :restaurant, null: false, foreign_key: true
      t.references :weekday, null: false, foreign_key: true

      t.timestamps
    end
  end
end
