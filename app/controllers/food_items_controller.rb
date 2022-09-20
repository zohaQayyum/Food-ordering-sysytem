class FoodItemsController < ApplicationController
  def index
    if params[:restaurant_id]
      @restaurant =  current_employee.restaurant
      @menu = @restaurant.menus
    else
      @food = FoodItem.all
    end
  end

  def new
    @food = FoodItem.new
  end

  def create
    @food = FoodItem.new(food_params)
    if @food.save
      redirect_to  restaurant_food_items_url(current_employee)
    else
      redirect_to restaurant_food_items_url(current_employee), notice: "Can't be empty"
    end
  end

  def edit
    @food = FoodItem.find(params[:id])
  end

  def update
    @food = FoodItem.find(params[:id])
    if @food.update(food_params)
      redirect_to  restaurant_food_items_url(current_employee)
    else
      render :edit
    end
  end

  def destroy
    food = FoodItem.find(params[:id])
    food.destroy
    redirect_back(fallback_location: restaurant_food_items_path(current_employee))
  end

  private

  def food_params
    params.require(:food_item).permit(:name, :price, :quantity, :group_item_id, :discount_id)
  end
end
