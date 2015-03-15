class OrdersController < ApplicationController
  
  def create
    item = Item.find(params[:item_id])
    @current_order.cart_items = {item.id => { :quantity => gs
      1 } }
    @current_order.save
    redirect_to menu_path, alert: "You are redirected yo!"
  end

  def show
    binding.pry
   @current_order
  end

end