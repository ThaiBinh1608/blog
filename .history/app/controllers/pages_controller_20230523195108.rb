class PagesController < ApplicationController
  def home
    
  end
  def projects
    @projects = Project.all
  end
 
  def about
  end
end
