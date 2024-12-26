class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def fetch_orders
    response = {
      curry: @curry = Curry.find_by(id: params[:curry_id]) || false,
      ricesize: @ricesize = Ricesize.find_by(id: params[:ricesize_id]) || false,
      spiceness: @spiceness = Spiceness.find_by(id: params[:spiceness_id]) || false
    }

    response = response.find_all {|key, value| value != false}
    render json: response
  end

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @curries = Curry.all
    @ricesizes = Ricesize.all
    @spicenesses = Spiceness.all
  end

  def create
    @order = current_customer.orders.build(order_params)
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

  def edit
    @order = Order.find(params[:id])
    @curries = Curry.all
    @ricesizes = Ricesize.all
    @spicenesses = Spiceness.all
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit', status: 'unprocessable_entity'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    if request.referrer.nil?
      redirect_to root_url, status: :see_other
    else
      redirect_to request.referrer, status: :see_other
    end
  end

  private
    def order_params
      params.require(:order).permit(:id, :curry_id, :spiceness_id, :ricesize_id, :price)
    end
end
