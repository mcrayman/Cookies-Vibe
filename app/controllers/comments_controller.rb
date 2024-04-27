# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully added.'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :user_name)
  end
end
