class OrdersController < ApplicationController

  def index
    @orders = Order.all
      @order = Order.new
  end



  def create
    Order.create(order_params)
    redirect_to users_path
  end

  def destroy

    Order.delete(params[:id])
    redirect_to users_path
  end

  private

  def order_params
    params.require(:order).permit(:food_item_id, :party_id)
  end

end
