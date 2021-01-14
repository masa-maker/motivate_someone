class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
  end

  def post_params
    params.require(:post).permit(:text, :image)
  end
end
