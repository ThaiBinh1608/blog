class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
        @post = Post.new
    end

    def destroy
    end

    private

  def comment_params
    params.require(:comment).permit(:body)
  end
    
end
