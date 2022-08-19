class CreateVouchers < ActiveRecord::Migration[6.1]
  def change
    create_table :vouchers do |t|
      t.boolean :status
      t.integer :promo_code

      t.timestamps
    end
  end
end
