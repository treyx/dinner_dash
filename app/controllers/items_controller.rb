class ItemsController < ApplicationController

  def index
    @items = Item.active
  end

  def post
    
  end

  def show
    @item = Item.find(params[:id])
  end

end
