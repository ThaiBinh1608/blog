class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.user = current_user

        if @comment.save
            flash[:notice] = "Comment created successfully"
            redirect_to post_path(@post)
        else
            flash[:alert] = "Comment has not been created"
    end

    def destroy
    end

    private

  def comment_params
    params.require(:comment).permit(:body)
  end
    
end
