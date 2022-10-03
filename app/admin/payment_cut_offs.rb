ActiveAdmin.register PaymentCutOff do
  permit_params :admin_percent, :admin_amount, :restaurant_percent, :restaurant_amount, :total_amount, :restaurant_id

  index do
    column :admin_amount
    column :admin_percent
    column :restaurant_percent
    column :total_amount
    column :restaurant
    actions
  end
end
