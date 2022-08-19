class CreateDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :deals do |t|
      t.date :date_active_from
      t.date :date_active_to
      t.time :time_active_from
      t.time :time_active_to
      t.references :discount, null: false, foreign_key: true

      t.timestamps
    end
  end
end
