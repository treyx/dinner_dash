class Admin::CategoriesController < AdminController

  def index
    if current_user.nil? || current_user.user?
      redirect_to root_path, alert: "Sensei says: 'Not quite yet young grasshopper'"
    else
      @categories = Category.all
    end
  end

  def edit
    if current_user.nil? || current_user.user?
      redirect_to root_path, alert: "Sensei says: 'Not quite yet young grasshopper'"
    else
      render :edit
    end
  end

  def new
    if current_user.nil? || current_user.user?
      redirect_to root_path, alert: "Sensei says: 'Not quite yet young grasshopper'"
    else
      @category = Category.new
    end
  end

  def create
    if current_user.nil? || current_user.user?
      redirect_to root_path, alert: "Sensei says: 'Not quite yet young grasshopper'"
    else
      @category = Category.new(category_params)
      if @category.save
        redirect_to admin_categories_path
      else
        render :new
      end
    end
  end

  private

  def category_params
    params.require(:category).permit(:title, :description)
  end
end
