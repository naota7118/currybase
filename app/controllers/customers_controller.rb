class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.build(customer_params)
    if @customer.save
      flash[:success] = "登録に成功しました！"
      redirect_to @customer
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private
    def customer_params
      params.require(:customer).permit(:id, :name, :email, :password, :password_confirmation)
    end

end
