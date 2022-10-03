class OrdersController < ApplicationController
  def index
    @restaurant =  current_employee.restaurant
    @q = @restaurant.orders.ransack(params[:q])
    @pagy, @order = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_back(fallback_location: restaurant_orders_path(:restaurant_id))
  end
end
