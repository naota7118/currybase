class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    binding.pry
    @order = Order.build(order_params)
    if @order.save
      redirect_to root_url
    end
  end

  private
    def order_params
      params.require(:order).permit(:curry, :spiceness, :ricesize, :price)
    end
end
