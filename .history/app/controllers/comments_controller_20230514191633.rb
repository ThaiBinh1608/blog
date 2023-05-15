class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
        @comment = @post.comments.create(comment_params)
        @comment.user = current_user
    
        if @comment.save
          redirect_to post_path(@post), notice: 'Comment has been created'
        else
          redirect_to post_path(@post), alert: 'Comment has not been created'
        end
      end
end
