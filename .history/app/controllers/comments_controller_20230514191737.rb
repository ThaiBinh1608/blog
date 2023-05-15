class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
    end

    def destroy
    end

    private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
    
end
