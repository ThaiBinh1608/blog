class PagesController < ApplicationController
  def home
    
  end
  def home
    @projects = Project.all
  end
 
  def about
  end
end
