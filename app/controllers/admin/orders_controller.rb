class Admin::OrdersController < ApplicationController
  before_action :set_order
  
  def index
    @orders = Order.find.all.order(created_at: :DESC)
  end

  def show
  end
  
  def update
    @order.update(order_params)
    redirect_to admin_order_path(@order)
  end
  
  private
  def order_params
    params.require(:order).permit(:status)
  end
  
  def set_order
    @order = Order.find(params[:id])
  end
end
