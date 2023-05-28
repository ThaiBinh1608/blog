class PagesController < ApplicationController
  def home
  end
  def users
    @users = User.all
    end
  def about
  end
end
