class AdminController < ApplicationController

  def index; end


  def posts
    @posts = Post.all.includes(:user)
  end


  def comments; end

  def users
    @users = User.all
    end


    def show_user
      @user = User.find(params[:id])
    end
end
