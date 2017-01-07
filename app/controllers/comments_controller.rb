class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params.require(:comment).permit(:body))
    @comment.user_id = 1

    if @comment.save
      flash['notice'] = "Your comment was added"
      redirect_to post_path(@post)
    else
      @post = Post.find(params[:post_id])
      render 'posts/show'
    end
  end
end