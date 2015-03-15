class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: true
  has_many :orders
  has_many :categories
  enum status: %w(active retired)
end
