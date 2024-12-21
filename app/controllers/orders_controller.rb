class OrdersController < ApplicationController

  def new
    @order = Order.new
    @curries = Curry.all
    @ricesizes = Ricesize.all
    @spicenesses = Spiceness.all
    # binding.pry
  end

  def create
    @order = Order.build(order_params)
    binding.pry
    if @order.save
      redirect_to @order, notice: '注文が作成されました。'
    else
      @curries = Curry.all
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
    # render :show
  end

  private
    def order_params
      params.require(:order).permit(:id, :curry_id, :spiceness_id, :ricesize_id, :price)
    end
end
