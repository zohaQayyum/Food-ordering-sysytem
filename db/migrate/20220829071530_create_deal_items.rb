class CreateDealItems < ActiveRecord::Migration[6.1]
  def change
    create_table :deal_items do |t|
      t.references :deal, null: false, foreign_key: true
      t.references :dealable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
