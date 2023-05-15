class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.user = current_user

        if @comment.save
            flash[:notice] =
        else
    end

    def destroy
    end

    private

  def comment_params
    params.require(:comment).permit(:body)
  end
    
end
