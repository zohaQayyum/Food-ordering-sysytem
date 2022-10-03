class ReviewsController < ApplicationController
  def index
    @restaurant =  current_employee.restaurant
    @q = @restaurant.orders.ransack(params[:q])
    @pagy, @order = pagy(@q.result(distinct: true), items: params[:per_page])
  end
end
