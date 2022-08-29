class CreateDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :deals do |t|
      t.string :name
      t.date :date_active_from
      t.date :date_active_to
      t.time :time_active_fron
      t.time :time_active_to

      t.timestamps
    end
  end
end
