class Order < ActiveRecord::Base
  validates :user_id, :cart_items, presence: true
  belongs_to :user

  def created_at_formatted
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def updated_at_formatted
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def cart_item_and_quantity
    items = Hash.new
    cart_items.select { |item_id, quantity| items[Item.find(item_id)] = quantity }
    items
  end
end
