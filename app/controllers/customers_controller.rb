class CustomersController < ApplicationController

  def index
    if params[:restaurant_id]
      @restaurant =  current_employee.restaurant
      @order = @restaurant.orders
    else
      @customer = Customer.all
    end
  end
end
