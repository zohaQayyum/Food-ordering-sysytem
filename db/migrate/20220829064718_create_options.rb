class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :item_name
      t.string :description

      t.timestamps
    end
  end
end
