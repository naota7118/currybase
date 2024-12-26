module SessionsHelper

  def log_in(customer)
    session[:customer_id] = customer.id
  end

  def current_customer
    if session[:customer_id]
      @current_customer ||= Customer.find_by(id: session[:customer_id])
    end
  end

  def logged_in?
    !current_customer.nil?
  end

  def log_out
    reset_session
    @current_customer = nil
  end

  # アクセスしようとしたURLを保存する
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
