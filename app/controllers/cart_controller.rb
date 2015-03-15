class CartController < ApplicationController
  def create
    @current_cart.add_item(params[:item_id])
    session[:cart] = @current_cart.cart_items
    redirect_to cart_path
  end
end
