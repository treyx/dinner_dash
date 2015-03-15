class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def create_cart
    return @current_order if @current_order

    @current_order = Order.find_or_create_by(id: session[:order_id])
    session[:order_id] = @current_order.id
    @current_order
  end
  before_action :create_cart

  def current_order
    @current_order
  end


end
