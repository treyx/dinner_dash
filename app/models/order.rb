class Order < ActiveRecord::Base
  store_accessor :cart_items, :item_id, :quantity

end