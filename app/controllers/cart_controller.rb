class CartController < ApplicationController
  def create
    @current_cart.add_item(params[:item_id])
    session[:cart] = @current_cart.cart_items
    redirect_to cart_path
  end

  def delete
    @current_cart.delete_item(params[:format])
    redirect_to cart_path
  end

  def update
    binding.pry
    @current_cart.increase_item_quantity(params[:item_id])
    redirect_to cart_path
  end
end
