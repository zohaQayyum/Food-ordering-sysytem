class AddNameToDeals < ActiveRecord::Migration[6.1]
  def change
    add_column :deals, :name, :string
  end
end
