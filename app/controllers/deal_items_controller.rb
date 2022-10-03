class DealItemsController < ApplicationController
  def index
    @deal = Deal.find(params[:id])
  end

  def new
    @deal_item = DealItem.new
    @deal = Deal.find(params[:deal_id])
  end

  def create
    @deal_item = DealItem.new(deal_item_params)
    if @deal_item.save
      redirect_to  deal_items_path
    else
      redirect_to deal_items_path, notice: "Can't be empty"
    end
  end

  def destroy
    @deal_item = DealItem.find(params[:id])
    @deal_item.destroy
    redirect_back(fallback_location:  deal_items_path)
  end

  private

  def deal_item_params
    params.require(:deal).permit(:dealable_id, :dealable_type)
  end
end
