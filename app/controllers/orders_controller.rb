class OrdersController < ApplicationController
  def create
    # unless current_user
    #   flash[:error] = "You must log in to checkout. Please login."
    #   redirect_to login_path and return
    # end
    submitted_cart = params[:cart]
    order = Order.create(status: "ordered",
           cart_items: submitted_cart)
    flash[:notice] = "Order Submitted, Thank You!"
      redirect_to root_path
  end
end
