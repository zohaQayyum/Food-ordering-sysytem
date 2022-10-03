ActiveAdmin.register Customer do
  permit_params :contact, :street_address, :city, :state, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name

  index do
    selectable_column
    column :name
    column :email
    column :address
    column :created_at
    actions
  end

  filter :orders
  filter :first_name
  filter :last_name
  filter :city
  filter :state
  filter :email
  filter :created_at
end
