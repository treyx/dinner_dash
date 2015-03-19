class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: true
  has_attached_file :picture,
                    :styles => { :large => "960x960",
                                 :medium => "300x300>",
                                 :thumb => "100x100>" },
                    :default_url => "public/seed_photos/:style/missing.png"
  validates_attachment_content_type :picture,
                                    :content_type => /\Aimage\/.*\Z/
  has_many :orders
  has_many :items_categories
  has_many :categories, :through => :items_categories
  enum status: %w(active retired)
end
