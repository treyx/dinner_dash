class Item < ActiveRecord::Base
  validates :title, presence: true
end
