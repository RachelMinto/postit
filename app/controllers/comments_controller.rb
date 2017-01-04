class CommentController < ActionController::Base

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params.require(:comment).permit(:body))

    if @post.save
      flash[:notice] = "Your comment was added"
      redirect_to post_path(@post)
    else
      render :template => "posts/new"
    end
  end
end