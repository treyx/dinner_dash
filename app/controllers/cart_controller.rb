class CartController < ApplicationController

  def create
    item_id = params[:item_id]
    @current_cart.add_item(item_id)
    session[:cart] = @current_cart.cart_items
    redirect_to cart_path
  end
end