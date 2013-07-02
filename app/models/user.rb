class User < ActiveRecord::Base
  has_many :donations

  validates :email,    :uniqueness => true, :format     => { :with => /@/ }
  validates :username, :uniqueness => true, :presence   => true

  has_secure_password
end