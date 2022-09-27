class CustomersController < ApplicationController
  def index
    if params[:restaurant_id]
      @restaurant =  current_employee.restaurant
      @q = @restaurant.orders.ransack(params[:q])
      @pagy, @order = pagy(@q.result(distinct: true), items: params[:per_page])
    else
      @customer = Customer.all
    end
  end
end
