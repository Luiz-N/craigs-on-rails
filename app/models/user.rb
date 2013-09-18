class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_secure_password

  has_many :posts

   attr_accessible :username, :email, :password, :password_confirmation

end
