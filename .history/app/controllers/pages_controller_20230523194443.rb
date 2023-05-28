class PagesController < ApplicationController
  def home
    
  end
  def Project
    @projects = Project.all
  end
 
  def about
  end
end
