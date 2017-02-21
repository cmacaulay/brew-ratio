class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes 
  validates_confirmation_of :password

  enum role: [:default, :admin]
end
