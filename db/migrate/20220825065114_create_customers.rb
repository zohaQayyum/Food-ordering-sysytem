class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :contact
      t.string :street_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
