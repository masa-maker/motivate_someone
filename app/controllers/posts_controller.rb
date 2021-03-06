class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post =Post.new
  end

  def create
     @post = Post.create(post_params)
    if @post.valid?
      @post.save
    redirect_to posts_path
    else
      render 'new'
    end
  end

  def post_params
    params.require(:post).permit(:text, :image)
  end
end
