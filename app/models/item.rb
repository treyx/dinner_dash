class Item < ActiveRecord::Base
  validates :title, presence: true
  has_many :orders, through: :order_items
  has_many :order_items
end
