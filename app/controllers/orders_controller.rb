class OrdersController < ApplicationController
  def index
    @restaurant =  current_employee.restaurant
    @order = @restaurant.orders
  end
end
