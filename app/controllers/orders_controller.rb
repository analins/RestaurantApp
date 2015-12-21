class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_to users_path
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to orders_path
  end



  def destroy
    Order.delete(params[:id])
    redirect_to users_path
  end

  private

  def order_params
    params.require(:order).permit(:food_item_id, :party_id, :is_complete)
  end

end
