class User < ActiveRecord::Base
  has_many :donations

  attr_accessor :password, :username, :email

  validates :email,    :format     => { :with => /@/ }, :on => :create
  validates :username, :presence   => true,             :uniqueness => true
  validates :email,    :uniqueness => true

  has_secure_password
end