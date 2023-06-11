class PagesController < ApplicationController

  def home
    @posts = @user.posts.includes(:rich_text_body).order(created_at: :desc)
  end

 
  def about
  end
end
