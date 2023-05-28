class UsersController < ApplicationController
  before_action :set_user
  def profile
    @user.update(views: @user.views + 1)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def destroy
    session[:user_id] = nil
    @user = User.find(params[:id])
    @user.destroy
    # User.find(parmas[:id]).destroy
    # the below line didn't delete the current user :(
    # @user = User.destroy
    redirect_to :controller=>'users', :action => 'new'
  end
end
