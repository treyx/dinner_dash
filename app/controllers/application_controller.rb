class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :create_cart
  before_action :create_cart

  def create_cart
    @current_cart = Cart.new(session[:cart])
  end
end
