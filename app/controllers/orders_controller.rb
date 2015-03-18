class OrdersController < ApplicationController
  def create
    # unless current_user
    #   flash[:error] = "You must log in to checkout. Please login."
    #   redirect_to login_path and return
    # end
    Order.create(cart_items: params[:cart], user_id: current_user.id)
    flash[:notice] = "Order Submitted, Thank You!"
    redirect_to root_path
  end

  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end
end
