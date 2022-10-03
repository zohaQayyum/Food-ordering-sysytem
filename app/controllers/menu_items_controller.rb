class MenuItemsController < ApplicationController
  def create
    @restaurant =  current_employee.restaurant
    @menu = @restaurant.menus
    @menu_items = @menu.new(menu_params)
    if @menu_items.save
      redirect_to deals_index_path
    end
  end

  def destroy
    menu_item = MenuItem.find(params[:id])
    menu_item.destroy
    redirect_to deals_index_path
  end

  private

  def menu_params
    params.require(:menu_item).permit(:menuable_id, :menuable_type, :menu)
  end
end
