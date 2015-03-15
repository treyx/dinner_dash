class OrderItemsController < ApplicationController

  def create
    item = Item.find(params[:id])
    cart.add_item(item)
    redirect_to menu_path, alert: "You are redirected yo!"
  end

  def create
    item = Item.f ind(params[:id])
    current_order.add_item(item)
    redirect_to menu_path, alert: "You are redirected yo!"
  end

end
