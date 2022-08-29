class AddUserableToUser < ActiveRecord::Migration[6.1]
  add_reference :users, :userable, polymorphic: true, index: true
end
