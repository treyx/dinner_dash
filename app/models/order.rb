class Order < ActiveRecord::Base
  attr_reader :data

  # def initialize(cart_data)
  #   super
  #   @data = cart_data || {}
  # end

  def add_item(item_id)
  end


end