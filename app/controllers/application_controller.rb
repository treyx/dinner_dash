class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def cart
  #   return @cart if @cart

  #   @cart = Order.find_or_create_by(id: session[:cart_id])
  #   session[:cart_id] = @cart.id
  #   @cart
  # end

end
