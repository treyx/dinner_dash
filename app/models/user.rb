class User < ActiveRecord::Base
  has_secure_password
  validates :password, :full_name, :email, presence: true
  enum role: %w(user admin)
end
