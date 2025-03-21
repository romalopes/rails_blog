class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post
  def create
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = "Comment has been created"
    else
      flash[:alert] = "Comment has not been created"
    end
    redirect_to post_path(@post)
  end

  def destroy
    comment = @post.comments.find(params[:id])
    comment.destroy
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
  def comment_params
    params.require(:comment).permit(:body)
  end
end
