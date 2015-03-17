class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :create_cart
  before_action :create_cart
  helper_method :current_user

  def create_cart
    @current_cart = Cart.new(session[:cart])
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
