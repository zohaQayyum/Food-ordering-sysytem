class MenusController < ApplicationController
  def index
    @restaurant =  current_employee.restaurant
    @q = @restaurant.menus.ransack(params[:q])
    @pagy, @menu = pagy(@q.result(distinct: true), items: params[:per_page])
    # @pagy, @menu = pagy(@rest.menus, items: params[:per_page])
  end

  def new
    @menu = Menu.new
    @menu.menu_items.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.restaurant =  current_employee.restaurant
    if @menu.save
      redirect_to  menus_url
    else
      redirect_to menus_url, notice: "Can't be empty"
    end
  end

  def deal
    @menu = Menu.find(params[:menu_id])
  end

  def food_item
    @menu = Menu.find(params[:menu_id])
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :restaurant, menu_timings_attributes: [:id, :open_to, :open_from, :weekdays])
  end

  def search_params
    params.permit(:utf8, :commit, :search_type, :current_employee_id, q: [:name])
  end
end
