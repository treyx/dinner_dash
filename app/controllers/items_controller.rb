class ItemsController < ApplicationController

  def index
    #not retired items
    @items = Item.all
  end

  def post
    
  end

  def show
    @item = Item.find(params[:id])
  end

end
