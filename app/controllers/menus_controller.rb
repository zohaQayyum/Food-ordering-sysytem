class MenusController < ApplicationController
  def index
    @restaurant =  current_employee.restaurant
    @menu = @restaurant.menus
  end

  def deal
    @menu = Menu.find(params[:menu_id])
  end

  def food_item
    @menu = Menu.find(params[:menu_id])
  end
end
