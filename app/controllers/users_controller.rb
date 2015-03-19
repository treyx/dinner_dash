class UsersController < ApplicationController
  before_filter :authorize

  def show
    @user = current_user
    if current_user.admin?
      redirect_to admin_path
    else
      render :show
    end
  end

  private

  def authorize
    unless current_user
      redirect_to login_path, alert: "Sensei says: 'You are not authorized'"
    end
  end

end
