class Picture < ActiveRecord::Base
  has_attached_file :photo
  belongs_to :item
end
