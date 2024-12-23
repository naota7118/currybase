class OrdersController < ApplicationController

  def index
    response = {
      curry: @curry = Curry.find_by(id: params[:curry_id]) || false,
      ricesize: @ricesize = Ricesize.find_by(id: params[:ricesize_id]) || false,
      spiceness: @spiceness = Spiceness.find_by(id: params[:spiceness_id]) || false
    }

    response = response.find_all {|key, value| value != false}
    render json: response
  end

  def new
    @order = Order.new
    @curries = Curry.all
    @ricesizes = Ricesize.all
    @spicenesses = Spiceness.all
  end

  def create
    @order = Order.build(order_params)
    if @order.save
      redirect_to @order, notice: '注文が作成されました。'
    else
      @curries = Curry.all
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private
    def order_params
      params.require(:order).permit(:id, :curry_id, :spiceness_id, :ricesize_id, :price)
    end
end
