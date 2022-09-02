class UpdateTableRatings < ActiveRecord::Migration[6.1]
  def self.up
    change_table :reviews do |t|
      t.change :rating, :integer
    end
    rename_column :orders, :rating_id, :review_id
  end

  def self.down
    change_table :reviews do |t|
      t.change :rating, :float
    end
  end
end
