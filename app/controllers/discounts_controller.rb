class DiscountsController < ApplicationController
  def index
    @restaurant =  current_employee.restaurant
    @q = @restaurant.discounts.ransack(params[:q])
    @pagy, @discount = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def new
    @discount = Discount.new
    @discount.restaurant =  current_employee.restaurant
  end

  def create
    @discount = Discount.new(discount_params)
    if @discount.save
      redirect_to  discounts_url
    else
      redirect_to discounts_url, notice: "Can't be empty"
    end
  end

  def edit
    @discount = Discount.find(params[:id])
  end

  def update
    @discount = Discount.find(params[:id])
    if @discount.update(discount_params)
      redirect_to discounts_url
    else
      render :edit
    end
  end

  def destroy
    @discount = Discount.find(params[:id])
    @discount.destroy
    redirect_back(fallback_location:  discounts_path)
  end

  private

  def discount_params
    params.require(:discount).permit(:discount_percent, :discount_type, :restaurant)
  end
end
