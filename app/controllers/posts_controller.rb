class PostsController < ApplicationController
  
  before_filter :load_category

  def index

  end

  def new
    # @category
    if current_user
      @post = Post.new
    else
      redirect_to login_path
    end
  end

  def create
    p params
    # find the category
    # @category.posts.create
    p params[:category_id]
    p params["category_id"]
    @post = @category.posts.new(params[:post])
    @post.user_id = current_user.id
    @post.save
    p @post

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

private

def load_category
  @category = Category.find(params[:category_id])
end

end



