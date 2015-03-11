class Order < ActiveRecord::Base
  has_many :order_items
  has_many :items, through: :order_items

  attr_reader :data

  # def initialize(cart_data)
  #   super
  #   @data = cart_data || {}
  # end

  def add_item(item_id)
    # binding.pry
    
    # OrderItem.create(item_id: item_id)
   
    # self.create_order_item(item_id: item_id)

    self.order_items.create(item_id: item_id)

  end


end