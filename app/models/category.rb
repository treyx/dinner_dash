class Category < ActiveRecord::Base
  validates :title, presence: true
  has_many :items_categories
  has_many :items, :through => :items_categories
end
