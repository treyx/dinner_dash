class OrdersController < ApplicationController
  def create
    unless current_user
    end
    if current_user
      Order.create(cart_items: params[:cart], user_id: current_user.id)
      flash[:notice] = "Order Submitted, Thank You!"
      redirect_to root_path
    else
      flash[:notice] = "You must log in to checkout. Please login."
      redirect_to login_path
    end
  end

  def index
    if current_user && current_user.user?
      @orders = current_user.orders
    elsif current_user.admin?
      @orders = Order.all
    else
      flash[:notice] = "You Must Be Logged In"
      redirect_to login_path
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if params[:status] == "paid"
      @order.paid!
      redirect_to order_path
    elsif params[:status] == "cancelled"
      @order.cancelled!
      redirect_to order_path
    elsif params[:status] == "completed"
      @order.completed!
      redirect_to order_path
    end
  end
end
