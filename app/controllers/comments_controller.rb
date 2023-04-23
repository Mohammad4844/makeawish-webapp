class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.save

    @posts = Post.all
    redirect_to posts_path
  end

  private

  def comment_params
    params.permit(:post_id, :content)
  end
end
