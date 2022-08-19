class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :contact
      t.string :status
      t.time :time_open_at
      t.time :time_close_at

      t.timestamps
    end
  end
end
