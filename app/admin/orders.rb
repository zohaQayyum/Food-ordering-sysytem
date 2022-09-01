ActiveAdmin.register Order do

   permit_params :total_amount, :date_time, :description, :customer_id, :payment_id, :restaurant_id, :rating_id, :voucher_id, :order_status_id

  index do
    column :total_amount
    column :date_time
    column :description
    column :customer
    column :payment_id
    column :restaurant
    column :rating
    column "Promo Code", :voucher
  end
  
end
