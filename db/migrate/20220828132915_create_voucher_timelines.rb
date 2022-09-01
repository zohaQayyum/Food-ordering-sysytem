class CreateVoucherTimelines < ActiveRecord::Migration[6.1]
  def change
    create_table :voucher_timelines do |t|
      t.datetime :valid_to
      t.datetime :valid_from
      t.references :voucher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
