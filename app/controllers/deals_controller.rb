class DealsController < ApplicationController
  def index
    @restaurant =  current_employee.restaurant
    @q = @restaurant.menus.ransack(params[:q])
    @pagy, @menu = pagy(@q.result(distinct: true), items: params[:per_page])
    # @menu = @restaurant.menus
  end

  def new
    @deal = Deal.new
    @deal.menu_items.new
  end

  def create
    @deal = Deal.new(deal_params)
    if @deal.save
      redirect_to  deals_url
    else
      redirect_to deals_url, notice: "Can't be empty"
    end
  end

  def edit
    @deal = Deal.find(params[:id])
  end

  def update
    @deal = Deal.find(params[:id])
    if @deal.update(deal_params)
      redirect_to deals_url
    else
      render :edit
    end
  end

  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy
    redirect_back(fallback_location:  deals_index_path)
  end

  private

  def deal_params
    params.require(:deal).permit(:name, :date_active_from, :date_active_to, :time_active_from, :time_active_to, :deal_type, :description, :price, menu_items_attributes: [:id, :menu_id, :menuable_id, :menuable_type])
  end
end
