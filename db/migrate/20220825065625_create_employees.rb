class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.integer :position
      t.integer :manager_id
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
