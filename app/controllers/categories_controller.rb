class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end


    def new
      if current_user.nil? || current_user.user?
        redirect_to root_path, :alert => "Sensei says: 'Not quite yet young grasshopper'"
      else
        @item = Item.new
      end
    end

    def create
      @item = Item.new(item_params)
      if @item.save
        redirect_to items_path
      else
        render :new
      end
    end

end
