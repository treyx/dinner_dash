class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: true
  has_attached_file :picture
  validates_attachment_content_type :picture,
                                    :content_type => /\Aimage\/.*\Z/
  has_many :orders
  has_many :items_categories
  has_many :categories, :through => :items_categories
  enum status: %w(active retired)
end
