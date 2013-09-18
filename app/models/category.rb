class Category < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :posts
  has_many :posters, through: :posts, source: :user

   attr_accessible :title, :description

  def self.groups
    total = Category.all
    half = total.length/2
    [total.slice(0..(half-1)), total.slice(half..-1)]
  end

  def split_posts
    posts = self.posts
    half = posts.length/2
    [posts.slice(0..(half-1)), posts.slice(half..-1)]
  end
end
