class ItemsController < ApplicationController

  def index
    #not retired items
    @items = Item.all
  end

  def post
    
  end

  def show

  end

end
