class CategoriesController < ApplicationController
  
  def index
   @categories = Category.groups
  end

  def new

  end

  def create

  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.split_posts
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
