class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.float :rating
      t.date :date_recorded
      t.string :remarks

      t.timestamps
    end
  end
end
