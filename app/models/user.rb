class User < ActiveRecord::Base
  has_many :donations

  validates :email,    :format     => { :with => /@/ }, :on => :create
  validates :username, :presence   => true,             :uniqueness => true
  validates :email,    :uniqueness => true

  has_secure_password
end
