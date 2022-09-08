class Admin::CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to admin_comments_path
  end

  def index
    @comments = Comment.all
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
