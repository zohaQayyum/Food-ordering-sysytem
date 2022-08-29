class CreateMenuTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_timings do |t|
      t.time :open_to
      t.time :open_from
      t.references :menu, null: false, foreign_key: true
      t.references :weekday, null: false, foreign_key: true

      t.timestamps
    end
  end
end
