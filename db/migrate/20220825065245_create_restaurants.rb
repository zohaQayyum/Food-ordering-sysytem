class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :contact
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
