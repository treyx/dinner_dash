class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: true
  has_one :picture
  has_many :orders
  has_many :items_categories
  has_many :categories, :through => :items_categories
  enum status: %w(active retired)
end
