class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      if @user.user?
        session[:user_id] = @user.id
        flash[:notice] = "Sensei says: 'Welcome to the dojo'"
        redirect_to root_path
      elsif @user.admin?
        flash[:notice] = "Admin logged in."
        redirect_to '/admin'
      end
    else
      flash[:notice] = "Sensei says: 'Invalid Login: try again'"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Sensei says: 'sayonara'"
    redirect_to root_path
  end

end
