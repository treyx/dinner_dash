class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: true
  has_many :orders, through: :order_items
  has_many :order_items
  has_many :categories
end
