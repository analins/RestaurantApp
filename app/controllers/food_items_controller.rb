class FoodItemsController < ApplicationController

  def index
    @food_items = FoodItem.all
    @food_item = FoodItem.new
  end

  def create
    authenticate!
    FoodItem.create(food_params)
    redirect_to food_items_path
  end

  def destroy
    authenticate!
    FoodItem.delete(params[:id])
    redirect_to food_items_path
  end

  private

  def food_params
    params.require(:food_item).permit(:name, :description, :price)
  end

end
