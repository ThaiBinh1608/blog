class PagesController < ApplicationController
  def home
    
  end
  def pro
    @projects = Project.all
  end
 
  def about
  end
end
