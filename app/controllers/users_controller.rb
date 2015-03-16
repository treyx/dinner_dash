class UsersController < ApplicationController
  before_filter :authorize

  def show
    @user = current_user
    authorize! :read, @user
  end

  private

  def authorize
    unless current_user
      redirect_to login_path, alert: "Sensei says: 'You are not authorized'"
    end
  end

end
