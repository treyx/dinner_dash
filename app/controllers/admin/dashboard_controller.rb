class Admin::DashboardController < AdminController
  
  def index
    if current_user.nil? || current_user.user?
      redirect_to root_path
    else
      render :index
    end
  end

end
