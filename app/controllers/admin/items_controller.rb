class Admin::ItemsController < AdminController

  def index
    if current_user.nil? || current_user.user?
      redirect_to root_path
    else
      @items = Item.all
    end
  end

  def edit
    if current_user.nil? || current_user.user?
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
    if current_user.nil? || current_user.user?
      redirect_to root_path, :alert => "Sensei says: 'Not quite yet young grasshopper'"
    else
      @item = Item.new
    end
  end

  def create
    if current_user.nil? || current_user.user?
      redirect_to root_path, :alert => "Sensei says: 'Not quite yet young grasshopper'"
    else
      @item = Item.new(item_params)
      if @item.save
        redirect_to admin_items_path
      else
        render :new
      end
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :price)
  end

end
