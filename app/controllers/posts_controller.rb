class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
end
