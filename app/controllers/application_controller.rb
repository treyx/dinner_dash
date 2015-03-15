class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def create_cart
    @current_cart = Cart.new(session[:cart])
  end
  before_action :create_cart
  helper_method :create_cart

  #will need this
  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  # helper_method :current_user

end
