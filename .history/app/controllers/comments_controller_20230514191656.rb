class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
    end

    def destroy
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
      end
    
end
