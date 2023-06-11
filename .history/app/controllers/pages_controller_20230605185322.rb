class PagesController < ApplicationController
  before_action :set_user
  def home
    @posts = @user.posts.includes(:rich_text_body).order(created_at: :desc)
  end

 
  def about
  end
end
