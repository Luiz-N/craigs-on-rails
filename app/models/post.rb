class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :category
  belongs_to :user

  attr_accessible :category_id, :user_id, :title, :description, :price, :email

end
